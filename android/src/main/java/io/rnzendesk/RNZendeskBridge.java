
public class AppboyReactBridge extends ReactContextBaseJavaModule {

    public AppboyReactBridge(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @Override
    public String getName() {
        return "RNZendesk";
    }

    @ReactMethod
    public void initialize(ReadableMap config) {
        String appId = config.getString("appId");
        String zendeskUrl = config.getString("zendeskUrl");
        String clientId = config.getString("clientId");

        Zendesk.INSTANCE.init(getReactApplicationContext(), zendeskUrl, appId, clientId);
        Support.INSTANCE.init(Zendesk.INSTANCE);
    }

    @ReactMethod
    public void identifyJWT(String token) {
        Identity identity = new JwtIdentity(token);
        Zendesk.INSTANCE.setIdentity(identity);
    }

    @ReactMethod
    public void showHelpCenterWithOptions(ReadableMap options) {
        HelpCenterActivity.builder().show(getReactApplicationContext());
    }
}