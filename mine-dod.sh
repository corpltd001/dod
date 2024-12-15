curl https://raw.githubusercontent.com/corpltd001/dod/refs/heads/main/dod-start.sh | sh
curl https://sh.rustup.rs -sSf | bash -s -- -y
git clone https://github.com/quintolet/dod-worker-rs
cd dod-worker-rs
$HOME/.cargo/bin/cargo build --features gpu --release
target/release/worker-rs 174.138.125.234 --miner-id blxex-mk4ld-v32ow-bdfel-6dueq-j7qmv-ezclb-dbgtp-6mfs2-gx4j2-6ae
