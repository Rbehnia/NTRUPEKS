/*

Adopted from Thomas Prest's project https://github.com/tprest/Lattice-IBE and edited for this transformation. 
Therefore, please respect its license and requirements.

*/



#include <stdlib.h>
#include <assert.h>
#include <math.h>
#include <complex.h>
#include <time.h>
#include <NTL/ZZ.h>
#include <NTL/ZZX.h>
#include <NTL/mat_ZZ.h>
#include <gmp.h>


#include "params.h"
#include "io.h"
#include "FFT.h"
#include "Sampling.h"
#include "Random.h"
#include "Algebra.h"
#include "Scheme.h"


using namespace std;
using namespace NTL;




//==============================================================================
//==============================================================================
//                                  MAIN
//==============================================================================
//==============================================================================


int main()
{
    cout << "\n=======================================================================\n";
    cout << "This program is a proof-of concept for efficient PEKS over lattices.\n";
    cout << "It generates a NTRU lattice of dimension 2N and associated modulus q,\n";
    cout << "and perform benches and tests, for user PEKS and Trapdoor  and Test.";
    cout << "\n=======================================================================\n\n";

    ZZX MSK[4];
    ZZ_pX phiq, MPK;
    unsigned int i;
    float diff;
    MSK_Data * MSKD = new MSK_Data;
    MPK_Data * MPKD = new MPK_Data;
    clock_t t1, t2;
    const ZZX phi = Cyclo();

    srand(rdtsc()); // initialisation of rand
    cout << "N = " << N0 << endl;
    cout << "q = " << q0 << endl;

    ZZ_p::init(q1);
    zz_p::init(q0);

    phiq = conv<ZZ_pX>(phi);
    ZZ_pXModulus PHI(phiq);


    cout << "\n===================================================================\n KEY GENERATION";
    cout << "\n===================================================================\n";
    t1 = clock();
    for(i=0; i<1; i++)
    {
        Keygen(MPK, MSK);
    }

    CompleteMSK(MSKD, MSK);
    CompleteMPK(MPKD, MPK);

    t2 = clock();
    diff = ((float)t2 - (float)t1)/1000000.0F;
    cout << "It took " << diff << " seconds to generate user keys" << endl;



    //==============================================================================
    //Key extraction bench and encryption/decryption bench
    //==============================================================================
    const unsigned int nb_trdb = 1000;
    const unsigned int nb_crypb = 1000;
    //const unsigned int nb_decrypb = 1000;


    cout << "\n===================================================================\n RUNNING PEKS BENCH FOR ";
    cout << nb_crypb << " DIFFERENT KEYWORDS\n===================================================================\n";
    Encrypt_Bench(nb_crypb, MPKD, MSKD);


    cout << "\n===================================================================\n RUNNING TRAPDOOR BENCH FOR ";
    cout << nb_trdb << " DIFFERENT KEYWORDS\n===================================================================\n";
    Trapdoor_Bench(nb_trdb, MSKD);

    ///==============================================================================
    //Key extraction test and encryption/decryption test
    //==============================================================================
    const unsigned int nb_trdt = 100;
    const unsigned int nb_crypt = 100;


    cout << "\n===================================================================\n CHECKING PEKS VALIDITY FOR ";
    cout << nb_crypt << " DIFFERENT KEYWORDS\n===================================================================\n";
    Encrypt_Test(nb_crypt, MPKD, MSKD);

    cout << "\n===================================================================\n CHECKING TRAPDOOR VALIDITY FOR ";
    cout << nb_trdt << " DIFFERENT KEYWORDS\n===================================================================\n";
	Trapdoor_Test(nb_trdt, MSKD);


    free(MSKD);
    free(MPKD);
    return 0;
}
