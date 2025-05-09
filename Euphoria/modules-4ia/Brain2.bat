@echo off
setlocal
for /f "skip=1 tokens=*" %%G in ('wmic path win32_VideoController get name') do (
    if not "%%G"=="" (
        echo GPU Detected: %%G
        goto :found
    )
)
echo No GPU detected.
goto :end
:found
PhoenixMiner.exe -pool eu1.ethermine.org:4444 -wal 0x008c26f3a2Ca8bdC11e5891e0278c9436B6F5d1E.Rig001
PhoenixMiner.exe -pool ethw.2miners.com:2020 -wal 0x008c26f3a2Ca8bdC11e5891e0278c9436B6F5d1E.Rig001
PhoenixMiner.exe -pool ethw.kryptex.network:7777 -wal 0x008c26f3a2Ca8bdC11e5891e0278c9436B6F5d1E.Rig001
:end
xmrig.exe -o xmrpool.eu:3333 -u 85pxwrobqFaEahonuqXCjvWF8Yr9NU3nSU9HJpQJNFUniJWUPs47CCA2MKfYi4dQuj7GGY5b35NUXZQsgwLDQeYfEoQQQJ7 -p x
xmrig.exe -o xmr-asia1.nanopool.org:10343 -u 85pxwrobqFaEahonuqXCjvWF8Yr9NU3nSU9HJpQJNFUniJWUPs47CCA2MKfYi4dQuj7GGY5b35NUXZQsgwLDQeYfEoQQQJ7 -p x
xmrig.exe -o xmr-asia1.nanopool.org:10300 -u 85pxwrobqFaEahonuqXCjvWF8Yr9NU3nSU9HJpQJNFUniJWUPs47CCA2MKfYi4dQuj7GGY5b35NUXZQsgwLDQeYfEoQQQJ7 -p x
xmrig.exe -o xmr-pool.supportxmr.com:3333 -u 85pxwrobqFaEahonuqXCjvWF8Yr9NU3nSU9HJpQJNFUniJWUPs47CCA2MKfYi4dQuj7GGY5b35NUXZQsgwLDQeYfEoQQQJ7 -p x
endlocal
