BitShares Whitepapers
=====================

Overview
--------

The BitShares whitepapers are split into a set of distinct papers each
addressing a (more or less) self-contained unit of BitShares.

The recommended reading order for newcomers:

1. **bitshares-general.tex** The general concept of BitShares. #wallet #network #bts #accounts
2. **bitshares-financial-platform.tex** Description of BitShares for financial contracts. #mpa #uia #dex
7. **bitshares-structure.tex** BitShares as a business (DAC). #income #cost #profit #feeschedule
4. **bitshares-growth.tex** Incentives to grow the BitShares ecosystem are described and scalability is address. #referral #approval #lmax
3. **bitshares-consensus.tex** Addresses the consensus mechanism of the BitShares blockchain. #dpos #tapos #forks
5. **bitshares-history.tex** The history of BitShares #pts #ags #bts0.9 #sharedrops
6. **bitshares-license.tex** The licensing model and the interconnection to Cryptonomex

Howto
-----
The whitepapers are written using LaTeX and can be compiled directly into `pdf`
with

    pdflatex paper.tex

To compile all of them you may simply use `make`.

LaTex/Git
---------
The LaTeX-git watermark requires the following `post-commit`, `post-merge`, and
`post-checkout` hook to be placed in the `.git/hooks` directory:

    #!/bin/sh
    # Copyright 2014 Brent Longborough
    # Part of gitinfo2 package Version 2
    # Please read gitinfo2.pdf for licencing and other details
    # -----------------------------------------------------
    # Post-{commit,checkout,merge} hook for the gitinfo2 package
    #
    # Get the first tag found in the history from the current HEAD
    FIRSTTAG=$(git describe --tags --always --dirty='-*' 2>/dev/null)
    # Get the first tag in history that looks like a Release
    RELTAG=$(git describe --tags --long --always --dirty='-*' 2>/dev/null)
    # Hoover up the metadata
    git --no-pager log -1 --date=short --decorate=short \
        --pretty=format:"\usepackage[%
            shash={%h},
            lhash={%H},
            authname={%an},
            authemail={%ae},
            authsdate={%ad},
            authidate={%ai},
            authudate={%at},
            commname={%an},
            commemail={%ae},
            commsdate={%ad},
            commidate={%ai},
            commudate={%at},
            refnames={%d},
            firsttagdescribe={$FIRSTTAG},
            reltag={$RELTAG}
        ]{gitexinfo}" HEAD > .git/gitHeadInfo.gin
