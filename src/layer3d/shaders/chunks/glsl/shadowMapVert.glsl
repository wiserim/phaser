#ifdef USE_SHADOW

    vec4 worldPosition = u_Model * vec4(transformed, 1.0);

    #if NUM_DIR_SHADOWS > 0

        #pragma unroll_loop
        for ( int i = 0; i < NUM_DIR_LIGHTS; i ++ ) {

            vDirectionalShadowCoord[ i ] = directionalShadowMatrix[ i ] * worldPosition;

        }

    #endif

    #if NUM_POINT_SHADOWS > 0

        // nothing

    #endif

    #if NUM_SPOT_SHADOWS > 0

        #pragma unroll_loop
        for ( int i = 0; i < NUM_SPOT_LIGHTS; i ++ ) {

            vSpotShadowCoord[ i ] = spotShadowMatrix[ i ] * worldPosition;

        }

    #endif

#endif