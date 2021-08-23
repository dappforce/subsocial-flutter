@Skip("This test is making an actual http request")
import 'package:flutter_test/flutter_test.dart';
import 'package:subsocial_sdk/subsocial_sdk.dart';

void main() {
  test("test querying multiple cids", () async {
    final expectedResponse = {
      "bafyreieqtfresp7eoiri64n5desneolzzktf5rgfbuf4aouf5y7ztzv4wm": {
        "body": ""
      },
      "bafyreifthuzrz3i4gt2to7nfy4bzbi7ju32eahqzsnemb7nnedxhepzjg4": {
        "body":
            "Moonbeam recently shared more details about “Take Flight”. This is a token event for Moonbeam community giving them a chance to obtain Glimmer (\$GLMR) tokens - Moonbeam's utility tokens.\n\nTake Flight event includes 3 sequential rounds and for all of them will require a whitelist to participate. The first round will be Community Early Access, the second round will be Community General and the last one will be Future Community.\n\n80,000,000 \$GLMR will be allocated for the event and the event will start on September 7 (registration & identity verification will start sooner!)\n\nApart from Take Flight, Moonbeam Foundation will also run Liquidity Incentive Programs on both Moonriver and Moonbeam to allocate a percentage of the Moonbeam network to reward Moonbeam Crowdloan contributors.\n\nFor whitelist process, you can check this step-by-step guide for more information:\nhttps://moonbeam.foundation/tutorials/whitelist-telegram/ \n\nFor the full article, check: https://moonbeam.foundation/take-flight/",
        "canonical":
            "https://twitter.com/PolkaWarriors_/status/1426418825189236737",
        "image": "QmPKRsbj1B7E4o6t82TetGuzTtxB18RJfdhP6nYnfDmm6b",
        "tags": [
          "Moonbeam",
          "Moonriver",
          "Take Flight",
          "GLMR",
          "Polkadot Ecosystem",
          "PolkaWarriors"
        ],
        "title": "Moonbeam Take Flight: A Community Token Event"
      },
      "bafyreicfcv73pkxpnmri3ldhctjji25sxfzcihvqlm5gxifjpdo7fcnog4": {
        "body":
            "We are very excited to announce the release of [Sub.ID](https://sub.id/), a complimentary service to Subsocial, and our gift to the Substrate ecosystem!\n\nAre you tired of having to slowly switch chains in the polkadot.js wallet to retrieve your addresses? Have you ever spent a day out at the park where you can't access the polkadot.js wallet, and you need your address for a specific chain, but don't have it saved in your phone? We've got you covered! With SubID, all you need to do is bookmark one page in your browser, and you can access your various Substrate wallet addresses from anywhere.\n\nAs an example of what you can see on Sub ID, check the account of Shawn: https://sub.id/#/12hAtDZJGt4of3m2GqZcUCVAjZPALfvPwvtUTFZPQUbdX1Ud\n\nSubID's uses go beyond just personal convenience. It will also aid in tipping people, as you can now easily tip someone in any token you want, without having to ask them for their address for that chain (as all you need to know is their address on any Substrate chain). In the future we will be adding a \"Send\" button to the SubID interface to further facilitate actions like this.\n\nHere's how it works: Your different addresses for all the different Substrate chains are essentially linked together, and your Polkadot address can be used to derive your Subsocial address, and your Kusama address, etc., and vice versa (the only exception is Moonriver/Moonbeam addresses — there is no way to convert them into the Substrate address format in order to derive the other addresses). Your address for any Substrate-based blockchain can be used to derive your address for every other Substrate-based blockchain. Pretty neat, huh? SubID leverages this to create a page that is able to show all the addresses of one account, just based off of a single address from any Substrate chain.\n\n## An Overview\n\n![](https://miro.medium.com/max/1400/1*9YIDk3IIe706cEdbsaS2OQ.png)\n\nThis section summarizes your account, using the name, profile picture, and description you have set on Subsocial, as well as displaying your Substrate address, and a rough estimate of the total value of all your Substrate tokens in terms of \$USD. In addition, there is a Follow button that will take you to their [Polkaverse](https://polkaverse.com/) page!\n\n![](https://miro.medium.com/max/1400/1*5AHzB0K3pELl4Kfelw0F5A.png)\n\nThis section shows your address and token balance for various chains. Our development team has to add these manually, but we will eventually get all chains listed. The price column pulls the price from CoinGecko, and the last column shows the total \$USD value of all your tokens. There is an option to hide chains that you do not possess any tokens for, as well as the ability to switch between the list view (shown above) and a grid view, depending on personal preference.\n\n![](https://miro.medium.com/max/1400/1*AXwYMQphOoI-iez8v0AHyw.png)\n\nThis section simply pulls the data from your on-chain identity, if you have set one through the polkadot.js wallet. It will list every chain that you have set an identity on, and if you have received a judgement to have your identity verified, there will be a green circle around the chain's icon.\n\nWe hope the community will find this tool useful! A reminder to join us on [Twitter](https://twitter.com/SubsocialChain), [Discord](https://discord.com/invite/w2Rqy2M), and [Telegram](https://t.me/Subsocial). We have also just added an email form to the front page of our [website](https://subsocial.network) if you would like to join our mailing list.\n\nHappy Subbing!",
        "image": "QmW3HPeaQVs8bbYRQiGghx8mrPVUL3VBrwGxdmZVmRvYQU",
        "tags": ["Sub ID", "Substrate Balances"],
        "title":
            "Introducing Sub ID: The One Stop Shop For All Your Substrate Addresses And Balances"
      }
    };

    final cids = expectedResponse.entries.map((e) => e.key).toList();

    final client = IpfsClient();

    final response = await client.query(cids, (j) => j);

    expect(response, expectedResponse);
  });
}
