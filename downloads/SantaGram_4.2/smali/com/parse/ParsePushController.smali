.class Lcom/parse/ParsePushController;
.super Ljava/lang/Object;


# static fields
.field static final DEVICE_TYPE_ANDROID:Ljava/lang/String; = "android"

.field static final DEVICE_TYPE_IOS:Ljava/lang/String; = "ios"


# instance fields
.field private final restClient:Lcom/parse/ParseHttpClient;


# direct methods
.method public constructor <init>(Lcom/parse/ParseHttpClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/parse/ParsePushController;->restClient:Lcom/parse/ParseHttpClient;

    return-void
.end method


# virtual methods
.method buildRESTSendPushCommand(Lcom/parse/ParsePush$State;Ljava/lang/String;)Lcom/parse/ParseRESTCommand;
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->queryState()Lcom/parse/ParseQuery$State;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->pushToAndroid()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->pushToAndroid()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->pushToIOS()Ljava/lang/Boolean;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->pushToIOS()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    move-object v2, v3

    :goto_2
    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->queryState()Lcom/parse/ParseQuery$State;

    move-result-object v0

    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->channelSet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->expirationTime()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->expirationTimeInterval()Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1}, Lcom/parse/ParsePush$State;->data()Lorg/json/JSONObject;

    move-result-object v5

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/parse/ParseRESTPushCommand;->sendPushCommand(Lcom/parse/ParseQuery$State;Ljava/util/Set;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parse/ParseRESTPushCommand;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const-string v2, "ios"

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    const-string v2, "android"

    goto :goto_2

    :cond_4
    move-object v2, v3

    goto :goto_2
.end method

.method public sendInBackground(Lcom/parse/ParsePush$State;Ljava/lang/String;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParsePush$State;",
            "Ljava/lang/String;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/parse/ParsePushController;->buildRESTSendPushCommand(Lcom/parse/ParsePush$State;Ljava/lang/String;)Lcom/parse/ParseRESTCommand;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParsePushController;->restClient:Lcom/parse/ParseHttpClient;

    invoke-virtual {v0, v1}, Lcom/parse/ParseRESTCommand;->executeAsync(Lcom/parse/ParseHttpClient;)La/j;

    move-result-object v0

    invoke-virtual {v0}, La/j;->k()La/j;

    move-result-object v0

    return-object v0
.end method
