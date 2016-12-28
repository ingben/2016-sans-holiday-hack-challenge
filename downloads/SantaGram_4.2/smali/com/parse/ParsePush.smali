.class public Lcom/parse/ParsePush;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParsePush$State;
    }
.end annotation


# static fields
.field static KEY_DATA_MESSAGE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "com.parse.ParsePush"


# instance fields
.field final builder:Lcom/parse/ParsePush$State$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "alert"

    sput-object v0, Lcom/parse/ParsePush;->KEY_DATA_MESSAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/parse/ParsePush$State$Builder;

    invoke-direct {v0}, Lcom/parse/ParsePush$State$Builder;-><init>()V

    invoke-direct {p0, v0}, Lcom/parse/ParsePush;-><init>(Lcom/parse/ParsePush$State$Builder;)V

    return-void
.end method

.method private constructor <init>(Lcom/parse/ParsePush$State$Builder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    return-void
.end method

.method public constructor <init>(Lcom/parse/ParsePush;)V
    .locals 2

    new-instance v0, Lcom/parse/ParsePush$State$Builder;

    iget-object v1, p1, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-virtual {v1}, Lcom/parse/ParsePush$State$Builder;->build()Lcom/parse/ParsePush$State;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/parse/ParsePush$State$Builder;-><init>(Lcom/parse/ParsePush$State;)V

    invoke-direct {p0, v0}, Lcom/parse/ParsePush;-><init>(Lcom/parse/ParsePush$State$Builder;)V

    return-void
.end method

.method static synthetic access$000(ZLjava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/parse/ParsePush;->checkArgument(ZLjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100()Lcom/parse/ParseObjectSubclassingController;
    .locals 1

    invoke-static {}, Lcom/parse/ParsePush;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    return-object v0
.end method

.method private static checkArgument(ZLjava/lang/Object;)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method static getPushChannelsController()Lcom/parse/ParsePushChannelsController;
    .locals 1

    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getPushChannelsController()Lcom/parse/ParsePushChannelsController;

    move-result-object v0

    return-object v0
.end method

.method static getPushController()Lcom/parse/ParsePushController;
    .locals 1

    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getPushController()Lcom/parse/ParsePushController;

    move-result-object v0

    return-object v0
.end method

.method private static getSubclassingController()Lcom/parse/ParseObjectSubclassingController;
    .locals 1

    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    return-object v0
.end method

.method public static sendDataInBackground(Lorg/json/JSONObject;Lcom/parse/ParseQuery;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/parse/ParsePush;

    invoke-direct {v0}, Lcom/parse/ParsePush;-><init>()V

    invoke-virtual {v0, p1}, Lcom/parse/ParsePush;->setQuery(Lcom/parse/ParseQuery;)V

    invoke-virtual {v0, p0}, Lcom/parse/ParsePush;->setData(Lorg/json/JSONObject;)V

    invoke-virtual {v0}, Lcom/parse/ParsePush;->sendInBackground()La/j;

    move-result-object v0

    return-object v0
.end method

.method public static sendDataInBackground(Lorg/json/JSONObject;Lcom/parse/ParseQuery;Lcom/parse/SendCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;",
            "Lcom/parse/SendCallback;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/parse/ParsePush;->sendDataInBackground(Lorg/json/JSONObject;Lcom/parse/ParseQuery;)La/j;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(La/j;Lcom/parse/ParseCallback1;)La/j;

    return-void
.end method

.method public static sendMessageInBackground(Ljava/lang/String;Lcom/parse/ParseQuery;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/parse/ParsePush;

    invoke-direct {v0}, Lcom/parse/ParsePush;-><init>()V

    invoke-virtual {v0, p1}, Lcom/parse/ParsePush;->setQuery(Lcom/parse/ParseQuery;)V

    invoke-virtual {v0, p0}, Lcom/parse/ParsePush;->setMessage(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/parse/ParsePush;->sendInBackground()La/j;

    move-result-object v0

    return-object v0
.end method

.method public static sendMessageInBackground(Ljava/lang/String;Lcom/parse/ParseQuery;Lcom/parse/SendCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;",
            "Lcom/parse/SendCallback;",
            ")V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/parse/ParsePush;->sendMessageInBackground(Ljava/lang/String;Lcom/parse/ParseQuery;)La/j;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(La/j;Lcom/parse/ParseCallback1;)La/j;

    return-void
.end method

.method public static subscribeInBackground(Ljava/lang/String;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/parse/ParsePush;->getPushChannelsController()Lcom/parse/ParsePushChannelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/ParsePushChannelsController;->subscribeInBackground(Ljava/lang/String;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public static subscribeInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/parse/ParsePush;->subscribeInBackground(Ljava/lang/String;)La/j;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(La/j;Lcom/parse/ParseCallback1;)La/j;

    return-void
.end method

.method public static unsubscribeInBackground(Ljava/lang/String;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/parse/ParsePush;->getPushChannelsController()Lcom/parse/ParsePushChannelsController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/parse/ParsePushChannelsController;->unsubscribeInBackground(Ljava/lang/String;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public static unsubscribeInBackground(Ljava/lang/String;Lcom/parse/SaveCallback;)V
    .locals 1

    invoke-static {p0}, Lcom/parse/ParsePush;->unsubscribeInBackground(Ljava/lang/String;)La/j;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(La/j;Lcom/parse/ParseCallback1;)La/j;

    return-void
.end method


# virtual methods
.method public clearExpiration()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-virtual {v0, v1}, Lcom/parse/ParsePush$State$Builder;->expirationTime(Ljava/lang/Long;)Lcom/parse/ParsePush$State$Builder;

    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-virtual {v0, v1}, Lcom/parse/ParsePush$State$Builder;->expirationTimeInterval(Ljava/lang/Long;)Lcom/parse/ParsePush$State$Builder;

    return-void
.end method

.method public send()V
    .locals 1

    invoke-virtual {p0}, Lcom/parse/ParsePush;->sendInBackground()La/j;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(La/j;)Ljava/lang/Object;

    return-void
.end method

.method public sendInBackground()La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParsePush$State$Builder;->build()Lcom/parse/ParsePush$State;

    move-result-object v0

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()La/j;

    move-result-object v1

    new-instance v2, Lcom/parse/ParsePush$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParsePush$1;-><init>(Lcom/parse/ParsePush;Lcom/parse/ParsePush$State;)V

    invoke-virtual {v1, v2}, La/j;->d(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public sendInBackground(Lcom/parse/SendCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/parse/ParsePush;->sendInBackground()La/j;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(La/j;Lcom/parse/ParseCallback1;)La/j;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParsePush$State$Builder;->channelSet(Ljava/util/Collection;)Lcom/parse/ParsePush$State$Builder;

    return-void
.end method

.method public setChannels(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParsePush$State$Builder;->channelSet(Ljava/util/Collection;)Lcom/parse/ParsePush$State$Builder;

    return-void
.end method

.method public setData(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParsePush$State$Builder;->data(Lorg/json/JSONObject;)Lcom/parse/ParsePush$State$Builder;

    return-void
.end method

.method public setExpirationTime(J)V
    .locals 3

    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParsePush$State$Builder;->expirationTime(Ljava/lang/Long;)Lcom/parse/ParsePush$State$Builder;

    return-void
.end method

.method public setExpirationTimeInterval(J)V
    .locals 3

    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParsePush$State$Builder;->expirationTimeInterval(Ljava/lang/Long;)Lcom/parse/ParsePush$State$Builder;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 4

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    sget-object v0, Lcom/parse/ParsePush;->KEY_DATA_MESSAGE:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/parse/ParsePush;->setData(Lorg/json/JSONObject;)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "com.parse.ParsePush"

    const-string v3, "JSONException in setMessage"

    invoke-static {v2, v3, v0}, Lcom/parse/PLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setPushToAndroid(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParsePush$State$Builder;->pushToAndroid(Ljava/lang/Boolean;)Lcom/parse/ParsePush$State$Builder;

    return-void
.end method

.method public setPushToIOS(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParsePush$State$Builder;->pushToIOS(Ljava/lang/Boolean;)Lcom/parse/ParsePush$State$Builder;

    return-void
.end method

.method public setQuery(Lcom/parse/ParseQuery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParsePush;->builder:Lcom/parse/ParsePush$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParsePush$State$Builder;->query(Lcom/parse/ParseQuery;)Lcom/parse/ParsePush$State$Builder;

    return-void
.end method
