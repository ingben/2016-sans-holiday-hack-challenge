.class Lcom/parse/ParsePush$State;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parse/ParsePush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParsePush$State$Builder;
    }
.end annotation


# instance fields
.field private final channelSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final data:Lorg/json/JSONObject;

.field private final expirationTime:Ljava/lang/Long;

.field private final expirationTimeInterval:Ljava/lang/Long;

.field private final pushToAndroid:Ljava/lang/Boolean;

.field private final pushToIOS:Ljava/lang/Boolean;

.field private final queryState:Lcom/parse/ParseQuery$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseQuery$State",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/parse/ParsePush$State$Builder;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Lcom/parse/ParsePush$State$Builder;->channelSet:Ljava/util/Set;
    invoke-static {p1}, Lcom/parse/ParsePush$State$Builder;->access$300(Lcom/parse/ParsePush$State$Builder;)Ljava/util/Set;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/parse/ParsePush$State;->channelSet:Ljava/util/Set;

    # getter for: Lcom/parse/ParsePush$State$Builder;->query:Lcom/parse/ParseQuery;
    invoke-static {p1}, Lcom/parse/ParsePush$State$Builder;->access$400(Lcom/parse/ParsePush$State$Builder;)Lcom/parse/ParseQuery;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/parse/ParsePush$State;->queryState:Lcom/parse/ParseQuery$State;

    # getter for: Lcom/parse/ParsePush$State$Builder;->expirationTime:Ljava/lang/Long;
    invoke-static {p1}, Lcom/parse/ParsePush$State$Builder;->access$500(Lcom/parse/ParsePush$State$Builder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePush$State;->expirationTime:Ljava/lang/Long;

    # getter for: Lcom/parse/ParsePush$State$Builder;->expirationTimeInterval:Ljava/lang/Long;
    invoke-static {p1}, Lcom/parse/ParsePush$State$Builder;->access$600(Lcom/parse/ParsePush$State$Builder;)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePush$State;->expirationTimeInterval:Ljava/lang/Long;

    # getter for: Lcom/parse/ParsePush$State$Builder;->pushToIOS:Ljava/lang/Boolean;
    invoke-static {p1}, Lcom/parse/ParsePush$State$Builder;->access$700(Lcom/parse/ParsePush$State$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePush$State;->pushToIOS:Ljava/lang/Boolean;

    # getter for: Lcom/parse/ParsePush$State$Builder;->pushToAndroid:Ljava/lang/Boolean;
    invoke-static {p1}, Lcom/parse/ParsePush$State$Builder;->access$800(Lcom/parse/ParsePush$State$Builder;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParsePush$State;->pushToAndroid:Ljava/lang/Boolean;

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    # getter for: Lcom/parse/ParsePush$State$Builder;->data:Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/parse/ParsePush$State$Builder;->access$900(Lcom/parse/ParsePush$State$Builder;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :goto_2
    iput-object v1, p0, Lcom/parse/ParsePush$State;->data:Lorg/json/JSONObject;

    return-void

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    # getter for: Lcom/parse/ParsePush$State$Builder;->channelSet:Ljava/util/Set;
    invoke-static {p1}, Lcom/parse/ParsePush$State$Builder;->access$300(Lcom/parse/ParsePush$State$Builder;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_1
    # getter for: Lcom/parse/ParsePush$State$Builder;->query:Lcom/parse/ParseQuery;
    invoke-static {p1}, Lcom/parse/ParsePush$State$Builder;->access$400(Lcom/parse/ParsePush$State$Builder;)Lcom/parse/ParseQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseQuery;->getBuilder()Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method synthetic constructor <init>(Lcom/parse/ParsePush$State$Builder;Lcom/parse/ParsePush$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/parse/ParsePush$State;-><init>(Lcom/parse/ParsePush$State$Builder;)V

    return-void
.end method


# virtual methods
.method public channelSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParsePush$State;->channelSet:Ljava/util/Set;

    return-object v0
.end method

.method public data()Lorg/json/JSONObject;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/parse/ParsePush$State;->data:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public expirationTime()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParsePush$State;->expirationTime:Ljava/lang/Long;

    return-object v0
.end method

.method public expirationTimeInterval()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParsePush$State;->expirationTimeInterval:Ljava/lang/Long;

    return-object v0
.end method

.method public pushToAndroid()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParsePush$State;->pushToAndroid:Ljava/lang/Boolean;

    return-object v0
.end method

.method public pushToIOS()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParsePush$State;->pushToIOS:Ljava/lang/Boolean;

    return-object v0
.end method

.method public queryState()Lcom/parse/ParseQuery$State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery$State",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParsePush$State;->queryState:Lcom/parse/ParseQuery$State;

    return-object v0
.end method
