echo #include ^<stdint.h^> > src\stdint.hpp
mkdir build
cd build
cmake -G"NMake Makefiles"                ^
-DCMAKE_INSTALL_PREFIX=%LIBRARY_PREFIX%  ^
      -DWITH_LIBSODIUM=ON                ^
      -DENABLE_DRAFTS=OFF                ^
      -DWITH_PERF_TOOL=OFF               ^
      -DZMQ_BUILD_TESTS=ON               ^
      -DENABLE_CPACK=OFF                 ^
      -DCMAKE_BUILD_TYPE=Release         ^
      ..
if errorlevel 1 exit 1
nmake install
if errorlevel 1 exit 1
script:
copy /y %LIBRARY_BIN%\libzmq-mt-4*.dll /b %LIBRARY_BIN%\libzmq.dll
if errorlevel 1 exit 1
copy /y %LIBRARY_LIB%\libzmq-mt-4*.lib /b %LIBRARY_BIN%\libzmq.lib
if errorlevel 1 exit 1

.\bin\test_ancillaries
if errorlevel 1 exit 1
.\bin\test_atomics
if errorlevel 1 exit 1
.\bin\test_base85
if errorlevel 1 exit 1
.\bin\test_bind_after_connect_tcp
if errorlevel 1 exit 1
.\bin\test_bind_src_address
if errorlevel 1 exit 1
.\bin\test_capabilities
if errorlevel 1 exit 1
.\bin\test_conflate
if errorlevel 1 exit 1
.\bin\test_connect_resolve
if errorlevel 1 exit 1
.\bin\test_connect_rid
if errorlevel 1 exit 1
.\bin\test_ctx_destroy
if errorlevel 1 exit 1
.\bin\test_ctx_options
if errorlevel 1 exit 1
.\bin\test_diffserv
if errorlevel 1 exit 1
.\bin\test_disconnect_inproc
if errorlevel 1 exit 1
REM .\bin\test_filter_ipc
REM .\bin\test_fork
REM .\bin\test_getsockopt_memset
.\bin\test_heartbeats
if errorlevel 1 exit 1
.\bin\test_hwm
if errorlevel 1 exit 1
.\bin\test_hwm_pubsub
if errorlevel 1 exit 1
.\bin\test_immediate
if errorlevel 1 exit 1
.\bin\test_inproc_connect
if errorlevel 1 exit 1
.\bin\test_invalid_rep
if errorlevel 1 exit 1
.\bin\test_iov
if errorlevel 1 exit 1
REM .\bin\test_ipc_wildcard
.\bin\test_issue_566
if errorlevel 1 exit 1
.\bin\test_last_endpoint
if errorlevel 1 exit 1
.\bin\test_many_sockets
if errorlevel 1 exit 1
.\bin\test_metadata
if errorlevel 1 exit 1
REM .\bin\test_monitor
.\bin\test_msg_ffn
if errorlevel 1 exit 1
.\bin\test_msg_flags
if errorlevel 1 exit 1
.\bin\test_pair_inproc
if errorlevel 1 exit 1
REM .\bin\test_pair_ipc
.\bin\test_pair_tcp
if errorlevel 1 exit 1
.\bin\test_probe_router
if errorlevel 1 exit 1
REM .\bin\test_proxy
REM .\bin\test_proxy_single_socket
REM .\bin\test_proxy_terminate
.\bin\test_pub_invert_matching
if errorlevel 1 exit 1
.\bin\test_req_correlate
if errorlevel 1 exit 1
.\bin\test_req_relaxed
if errorlevel 1 exit 1
.\bin\test_reqrep_device
if errorlevel 1 exit 1
.\bin\test_reqrep_inproc
if errorlevel 1 exit 1
REM .\bin\test_reqrep_ipc
.\bin\test_reqrep_tcp
if errorlevel 1 exit 1
.\bin\test_router_handover
if errorlevel 1 exit 1
.\bin\test_router_mandatory
if errorlevel 1 exit 1
REM .\bin\test_router_mandatory_hwm
.\bin\test_security_null
if errorlevel 1 exit 1
.\bin\test_security_plain
if errorlevel 1 exit 1
.\bin\test_setsockopt
if errorlevel 1 exit 1
.\bin\test_sockopt_hwm
if errorlevel 1 exit 1
.\bin\test_sodium
if errorlevel 1 exit 1
.\bin\test_spec_dealer
if errorlevel 1 exit 1
.\bin\test_spec_pushpull
if errorlevel 1 exit 1
.\bin\test_spec_rep
if errorlevel 1 exit 1
.\bin\test_spec_req
if errorlevel 1 exit 1
.\bin\test_spec_router
if errorlevel 1 exit 1
.\bin\test_srcfd
if errorlevel 1 exit 1
.\bin\test_stream
if errorlevel 1 exit 1
.\bin\test_stream_disconnect
if errorlevel 1 exit 1
.\bin\test_stream_empty
if errorlevel 1 exit 1
REM .\bin\test_stream_exceeds_buffer
.\bin\test_stream_timeout
if errorlevel 1 exit 1
.\bin\test_sub_forward
if errorlevel 1 exit 1
.\bin\test_term_endpoint
if errorlevel 1 exit 1
.\bin\test_timeo
if errorlevel 1 exit 1
.\bin\test_unbind_inproc
if errorlevel 1 exit 1
.\bin\test_unbind_wildcard
if errorlevel 1 exit 1
REM .\bin\test_use_fd_ipc
.\bin\test_use_fd_tcp
if errorlevel 1 exit 1
.\bin\test_xpub_manual
if errorlevel 1 exit 1
.\bin\test_xpub_nodrop
if errorlevel 1 exit 1
.\bin\test_xpub_welcome_msg
if errorlevel 1 exit 1
REM .\bin\test_zmq_poll_fd

REM .\bin\test_security_curve
REM .\bin\test_shutdown_stress
REM .\bin\test_system
REM .\bin\test_thread_safe
