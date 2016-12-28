.class Lcom/parse/ParseUserCurrentCoder;
.super Lcom/parse/ParseObjectCurrentCoder;


# static fields
.field private static final INSTANCE:Lcom/parse/ParseUserCurrentCoder;

.field private static final KEY_AUTH_DATA:Ljava/lang/String; = "auth_data"

.field private static final KEY_SESSION_TOKEN:Ljava/lang/String; = "session_token"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/parse/ParseUserCurrentCoder;

    invoke-direct {v0}, Lcom/parse/ParseUserCurrentCoder;-><init>()V

    sput-object v0, Lcom/parse/ParseUserCurrentCoder;->INSTANCE:Lcom/parse/ParseUserCurrentCoder;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/parse/ParseObjectCurrentCoder;-><init>()V

    return-void
.end method

.method public static get()Lcom/parse/ParseUserCurrentCoder;
    .locals 1

    sget-object v0, Lcom/parse/ParseUserCurrentCoder;->INSTANCE:Lcom/parse/ParseUserCurrentCoder;

    return-object v0
.end method


# virtual methods
.method public decode(Lcom/parse/ParseObject$State$Init;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseObject$State$Init;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject$State$Init",
            "<*>;>(TT;",
            "Lorg/json/JSONObject;",
            "Lcom/parse/ParseDecoder;",
            ")TT;"
        }
    .end annotation

    move-object v0, p1

    check-cast v0, Lcom/parse/ParseUser$State$Builder;

    const-string v1, "session_token"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/parse/ParseUser$State$Builder;->sessionToken(Ljava/lang/String;)Lcom/parse/ParseUser$State$Builder;

    const-string v1, "session_token"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    const-string v1, "auth_data"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_3

    :try_start_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v2

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/parse/ParseUser$State$Builder;->putAuthData(Ljava/lang/String;Ljava/util/Map;)Lcom/parse/ParseUser$State$Builder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    const-string v0, "auth_data"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/parse/ParseObjectCurrentCoder;->decode(Lcom/parse/ParseObject$State$Init;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    return-object v0
.end method

.method public encode(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject$State;",
            ">(TT;",
            "Lcom/parse/ParseOperationSet;",
            "Lcom/parse/ParseEncoder;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/parse/ParseObjectCurrentCoder;->encode(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/parse/ParseUser$State;

    invoke-virtual {v0}, Lcom/parse/ParseUser$State;->sessionToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v2, "session_token"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    check-cast p1, Lcom/parse/ParseUser$State;

    invoke-virtual {p1}, Lcom/parse/ParseUser$State;->authData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    :try_start_1
    const-string v2, "auth_data"

    invoke-virtual {p3, v0}, Lcom/parse/ParseEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    return-object v1

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "could not encode value for key: session_token"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "could not attach key: auth_data"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
