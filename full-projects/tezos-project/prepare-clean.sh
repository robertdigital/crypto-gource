git clone https://github.com/tezos/tezos
git clone https://github.com/tezos/tezos-papers
git clone https://github.com/tezos/zarith-benchmark
git clone https://github.com/tezos/optimal_stack
git clone https://github.com/tezos/tezoscoq
git clone https://github.com/tezos/fundraiser-tools
git clone https://github.com/tezos/tezos-explorer

gource --output-custom-log tezos.txt tezos
gource --output-custom-log tezos-papers.txt tezos-papers
gource --output-custom-log zarith-benchmark.txt zarith-benchmark
gource --output-custom-log optimal_stack.txt optimal_stack
gource --output-custom-log tezoscoq.txt tezoscoq
gource --output-custom-log fundraiser-tools.txt fundraiser-tools
gource --output-custom-log tezos-explorer.txt tezos-explorer

sed -i -r "s#(.+)\|#\1|/tezos#" tezos.txt
sed -i -r "s#(.+)\|#\1|/tezos-papers#" tezos-papers.txt
sed -i -r "s#(.+)\|#\1|/zarith-benchmark#" zarith-benchmark.txt
sed -i -r "s#(.+)\|#\1|/optimal_stack#" optimal_stack.txt
sed -i -r "s#(.+)\|#\1|/tezoscoq#" tezoscoq.txt
sed -i -r "s#(.+)\|#\1|/fundraiser-tools#" fundraiser-tools.txt
sed -i -r "s#(.+)\|#\1|/tezos-explorer#" tezos-explorer.txt

cat tezos.txt tezos-papers.txt zarith-benchmark.txt optimal_stack.txt tezoscoq.txt fundraiser-tools.txt tezos-explorer.txt | sort -n > tezos-project.txt

cd tezos
perl ../../../lib/avatar.pl
cp -rf .git/avatar ../
cd ..
cd tezos-papers
perl ../../../lib/avatar.pl
cp -rf .git/avatar ../
cd ..
cd zarith-benchmark
perl ../../../lib/avatar.pl
cp -rf .git/avatar ../
cd ..
cd optimal_stack
perl ../../../lib/avatar.pl
cp -rf .git/avatar ../
cd ..
cd tezoscoq
perl ../../../lib/avatar.pl
cp -rf .git/avatar ../
cd ..
cd fundraiser-tools
perl ../../../lib/avatar.pl
cp -rf .git/avatar ../
cd ..
cd tezos-explorer
perl ../../../lib/avatar.pl
cp -rf .git/avatar ../
cd ..
