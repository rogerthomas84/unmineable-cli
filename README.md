Unmineable CLI for Mac
=====

This script provides a quick way of checking your balance on Unmineable (a crypto mining tool). If you've not used it,
feel free to use my referral link. It helps me fund the time to make little helpful things like this.
* [https://unmineable.com/?ref=i0uo-b0up](https://unmineable.com/?ref=i0uo-b0up)
* Referral code: `i0uo-b0up`

## Installation...

### Quick install...

For a quick and easy installation, run this next command. Alternatively, see the next section for a safer way.

```
curl https://raw.githubusercontent.com/rogerthomas84/unmineable-cli/master/unmineable-cli > unmineable-cli \
  && mv unmineable-cli /usr/local/bin/unmineable-cli \
  && chmod +x /usr/local/bin/unmineable-cli
```

### Manual installation steps...

```
# Clone this repository
git clone git@github.com:rogerthomas84/unmineable-cli.git

# Go into the directory
cd unmineable-cli

# Copy the cli to the local bin directory
cp unmineable-cli /usr/local/bin/unmineable-cli

# Make the file executable
chmod +x /usr/local/bin/unmineable-cli

# Run the app...
unmineable-cli
```

## Usage...

At it's most basic, you can simply run `unmineable-cli` and the application will ask you for the wallet and coin type to
query and these will be cached in your home directory in `~/.unmineable-cli/.cache`.

Alternatively you can provide the `-wallet` and `-coin` arguments to manually specify the coin and wallet. Doing so will
not cache the details.

Additionally, you can provide the `-short` flag to just output the balance payable (see: [unmineable-api](https://github.com/unMineableDev/unmineable-api#get--addressaddresscoincoin) for more information on this)

```shell
usage: unmineable-cli [-h] [-coin COIN] [-wallet WALLET] [-short] [-rm]

Check the balances of unmineable. All arguments are optional

optional arguments:
  -h, --help      show this help message and exit
  -coin COIN      force use a specific coin (optional, otherwise use a cached version)
  -wallet WALLET  the wallet address (optional, otherwise use a cached version)
  -short          output just the balance payable (total pending payable balance)
  -rm             remove the cache file
```

## Running examples:

* `unmineable-cli` -> Normal running. Provide the wallet address to lookup and coin manually.
* `unmineable-cli -coin doge -wallet DDSDz9bkcD3qcfu7KnSmmfgPYvLUsCb1nR` -> Provide the wallet address to lookup and
  coin manually
* `unmineable-cli -rm` -> Clear the cached file. The cache file contains the wallet and coin provided when you used
  `unmineable-cli`
* `unmineable-cli -short` -> Output the short payable balance and nothing more.

### Output...

There are two types of output. Either the full output, or short.

Full output command (using `unmineable-cli` as the command)

```shell
----
      Target coin: doge
          Balance: 0.97700737
  Balance payable: 0.97700737
Payment threshold: 30
          Address: DDSDz9bkcD3qcfu7KnSmmfgPYvLUsCb1nR

---------------------------------------------------------------------
| If you found this useful, why not buy me a coffee with some DOGE? |
|          Send some DOGE my way ;-) My wallet address is:          |
|              DDSDz9bkcD3qcfu7KnSmmfgPYvLUsCb1nR                   |
---------------------------------------------------------------------

```

Short output command (using `unmineable-cli -short` as the command)

```shell
0.97700737
```
