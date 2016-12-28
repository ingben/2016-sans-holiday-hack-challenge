.class Lcom/parse/ParseRESTCommand;
.super Lcom/parse/ParseRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseRESTCommand$Builder;,
        Lcom/parse/ParseRESTCommand$Init;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parse/ParseRequest",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field static final HEADER_APPLICATION_ID:Ljava/lang/String; = "X-Parse-Application-Id"

.field static final HEADER_APP_BUILD_VERSION:Ljava/lang/String; = "X-Parse-App-Build-Version"

.field static final HEADER_APP_DISPLAY_VERSION:Ljava/lang/String; = "X-Parse-App-Display-Version"

.field static final HEADER_CLIENT_KEY:Ljava/lang/String; = "X-Parse-Client-Key"

.field static final HEADER_CLIENT_VERSION:Ljava/lang/String; = "X-Parse-Client-Version"

.field static final HEADER_INSTALLATION_ID:Ljava/lang/String; = "X-Parse-Installation-Id"

.field private static final HEADER_MASTER_KEY:Ljava/lang/String; = "X-Parse-Master-Key"

.field static final HEADER_OS_VERSION:Ljava/lang/String; = "X-Parse-OS-Version"

.field private static final HEADER_SESSION_TOKEN:Ljava/lang/String; = "X-Parse-Session-Token"

.field private static final PARAMETER_METHOD_OVERRIDE:Ljava/lang/String; = "_method"

.field static final USER_AGENT:Ljava/lang/String; = "User-Agent"

.field static server:Ljava/net/URL;


# instance fields
.field httpPath:Ljava/lang/String;

.field private installationId:Ljava/lang/String;

.field final jsonParameters:Lorg/json/JSONObject;

.field private localId:Ljava/lang/String;

.field public masterKey:Ljava/lang/String;

.field private operationSetUUID:Ljava/lang/String;

.field private final sessionToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/parse/ParseRESTCommand;->server:Ljava/net/URL;

    return-void
.end method

.method constructor <init>(Lcom/parse/ParseRESTCommand$Init;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseRESTCommand$Init",
            "<*>;)V"
        }
    .end annotation

    # getter for: Lcom/parse/ParseRESTCommand$Init;->method:Lcom/parse/a/b$b;
    invoke-static {p1}, Lcom/parse/ParseRESTCommand$Init;->access$000(Lcom/parse/ParseRESTCommand$Init;)Lcom/parse/a/b$b;

    move-result-object v0

    # getter for: Lcom/parse/ParseRESTCommand$Init;->httpPath:Ljava/lang/String;
    invoke-static {p1}, Lcom/parse/ParseRESTCommand$Init;->access$100(Lcom/parse/ParseRESTCommand$Init;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/parse/ParseRESTCommand;->createUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/parse/ParseRequest;-><init>(Lcom/parse/a/b$b;Ljava/lang/String;)V

    # getter for: Lcom/parse/ParseRESTCommand$Init;->sessionToken:Ljava/lang/String;
    invoke-static {p1}, Lcom/parse/ParseRESTCommand$Init;->access$200(Lcom/parse/ParseRESTCommand$Init;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    # getter for: Lcom/parse/ParseRESTCommand$Init;->installationId:Ljava/lang/String;
    invoke-static {p1}, Lcom/parse/ParseRESTCommand$Init;->access$300(Lcom/parse/ParseRESTCommand$Init;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRESTCommand;->installationId:Ljava/lang/String;

    iget-object v0, p1, Lcom/parse/ParseRESTCommand$Init;->masterKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/parse/ParseRESTCommand;->masterKey:Ljava/lang/String;

    # getter for: Lcom/parse/ParseRESTCommand$Init;->httpPath:Ljava/lang/String;
    invoke-static {p1}, Lcom/parse/ParseRESTCommand$Init;->access$100(Lcom/parse/ParseRESTCommand$Init;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    # getter for: Lcom/parse/ParseRESTCommand$Init;->jsonParameters:Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/parse/ParseRESTCommand$Init;->access$400(Lcom/parse/ParseRESTCommand$Init;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    # getter for: Lcom/parse/ParseRESTCommand$Init;->operationSetUUID:Ljava/lang/String;
    invoke-static {p1}, Lcom/parse/ParseRESTCommand$Init;->access$500(Lcom/parse/ParseRESTCommand$Init;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRESTCommand;->operationSetUUID:Ljava/lang/String;

    # getter for: Lcom/parse/ParseRESTCommand$Init;->localId:Ljava/lang/String;
    invoke-static {p1}, Lcom/parse/ParseRESTCommand$Init;->access$600(Lcom/parse/ParseRESTCommand$Init;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/parse/a/b$b;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/a/b$b;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-static {}, Lcom/parse/NoObjectsEncoder;->get()Lcom/parse/NoObjectsEncoder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/parse/NoObjectsEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    :goto_0
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/parse/a/b$b;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/parse/a/b$b;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/parse/ParseRESTCommand;->createUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/parse/ParseRequest;-><init>(Lcom/parse/a/b$b;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    iput-object p5, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    return-void
.end method

.method private static addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V
    .locals 3

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/parse/ParseRESTCommand;->addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    :goto_2
    return-void

    :cond_2
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/parse/ParseRESTCommand;->addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    goto :goto_2

    :cond_4
    invoke-virtual {p0, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    goto :goto_2
.end method

.method private static createUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    sget-object v0, Lcom/parse/ParseRESTCommand;->server:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    sget-object v1, Lcom/parse/ParseRESTCommand;->server:Ljava/net/URL;

    invoke-direct {v0, v1, p0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/parse/ParseRESTCommand;
    .locals 6

    const/4 v3, 0x0

    const-string v0, "httpPath"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "httpMethod"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/a/b$b;->a(Ljava/lang/String;)Lcom/parse/a/b$b;

    move-result-object v2

    const-string v0, "sessionToken"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "localId"

    invoke-virtual {p0, v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "parameters"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    new-instance v0, Lcom/parse/ParseRESTCommand;

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getLocalIdManager()Lcom/parse/LocalIdManager;
    .locals 1

    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getLocalIdManager()Lcom/parse/LocalIdManager;

    move-result-object v0

    return-object v0
.end method

.method protected static getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "Pointer"

    const-string v2, "__type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "localId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p0, Lorg/json/JSONObject;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/parse/ParseRESTCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    instance-of v0, p0, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/json/JSONArray;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/parse/ParseRESTCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static isValidCommandJSONObject(Lorg/json/JSONObject;)Z
    .locals 1

    const-string v0, "httpPath"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isValidOldFormatCommandJSONObject(Lorg/json/JSONObject;)Z
    .locals 1

    const-string v0, "op"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private maybeChangeServerOperation()V
    .locals 5

    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/parse/ParseRESTCommand;->getLocalIdManager()Lcom/parse/LocalIdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/LocalIdManager;->getObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseRESTCommand;->createUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseRESTCommand;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    const-string v1, "classes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/a/b$b;

    sget-object v1, Lcom/parse/a/b$b;->b:Lcom/parse/a/b$b;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/parse/a/b$b;->c:Lcom/parse/a/b$b;

    iput-object v0, p0, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/a/b$b;

    :cond_0
    return-void
.end method

.method static toDeterministicString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    invoke-static {v0, p0}, Lcom/parse/ParseRESTCommand;->addToStringer(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected addAdditionalHeaders(Lcom/parse/a/b$a;)V
    .locals 2

    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->installationId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "X-Parse-Installation-Id"

    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->installationId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/parse/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/a/b$a;

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "X-Parse-Session-Token"

    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/parse/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/a/b$a;

    :cond_1
    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->masterKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "X-Parse-Master-Key"

    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->masterKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/parse/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/a/b$a;

    :cond_2
    return-void
.end method

.method enableRetrying()V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/parse/ParseRESTCommand;->setMaxRetries(I)V

    return-void
.end method

.method public executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;La/j;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            "Lcom/parse/ProgressCallback;",
            "Lcom/parse/ProgressCallback;",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/parse/ParseRESTCommand;->resolveLocalIds()V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;La/j;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/parse/ParseRESTCommand;->toDeterministicString(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "ParseRESTCommand.%s.%s.%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/a/b$b;

    invoke-virtual {v4}, Lcom/parse/a/b$b;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/parse/ParseDigestUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v0}, Lcom/parse/ParseDigestUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationSetUUID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->operationSetUUID:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method protected newBody(Lcom/parse/ProgressCallback;)Lcom/parse/a/a;
    .locals 4

    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    const-string v0, "Trying to execute a %s command without body parameters."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/a/b$b;

    invoke-virtual {v3}, Lcom/parse/a/b$b;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/a/b$b;

    sget-object v2, Lcom/parse/a/b$b;->a:Lcom/parse/a/b$b;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/a/b$b;

    sget-object v2, Lcom/parse/a/b$b;->d:Lcom/parse/a/b$b;

    if-ne v1, v2, :cond_2

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "_method"

    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/a/b$b;

    invoke-virtual {v2}, Lcom/parse/a/b$b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    new-instance v1, Lcom/parse/ParseByteArrayHttpBody;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "application/json"

    invoke-direct {v1, v0, v2}, Lcom/parse/ParseByteArrayHttpBody;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected newRequest(Lcom/parse/a/b$b;Ljava/lang/String;Lcom/parse/ProgressCallback;)Lcom/parse/a/b;
    .locals 2

    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/parse/a/b$b;->b:Lcom/parse/a/b$b;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/parse/a/b$b;->c:Lcom/parse/a/b$b;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/parse/a/b$b;->b:Lcom/parse/a/b$b;

    invoke-super {p0, v0, p2, p3}, Lcom/parse/ParseRequest;->newRequest(Lcom/parse/a/b$b;Ljava/lang/String;Lcom/parse/ProgressCallback;)Lcom/parse/a/b;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/parse/a/b$a;

    invoke-direct {v1, v0}, Lcom/parse/a/b$a;-><init>(Lcom/parse/a/b;)V

    invoke-virtual {p0, v1}, Lcom/parse/ParseRESTCommand;->addAdditionalHeaders(Lcom/parse/a/b$a;)V

    invoke-virtual {v1}, Lcom/parse/a/b$a;->a()Lcom/parse/a/b;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/parse/ParseRequest;->newRequest(Lcom/parse/a/b$b;Ljava/lang/String;Lcom/parse/ProgressCallback;)Lcom/parse/a/b;

    move-result-object v0

    goto :goto_0
.end method

.method protected onResponseAsync(Lcom/parse/a/c;Lcom/parse/ProgressCallback;)La/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/a/c;",
            "Lcom/parse/ProgressCallback;",
            ")",
            "La/j",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    const/16 v3, 0x1f4

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/parse/a/c;->b()Ljava/io/InputStream;

    move-result-object v1

    new-instance v0, Ljava/lang/String;

    invoke-static {v1}, Lcom/parse/ParseIOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lcom/parse/a/c;->a()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_2

    const/16 v2, 0x258

    if-ge v1, v2, :cond_2

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x190

    if-lt v1, v0, :cond_0

    if-ge v1, v3, :cond_0

    const-string v0, "code"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "error"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/parse/ParseRESTCommand;->newPermanentException(ILjava/lang/String;)Lcom/parse/ParseException;

    move-result-object v0

    invoke-static {v0}, La/j;->a(Ljava/lang/Exception;)La/j;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, La/j;->a(Ljava/lang/Exception;)La/j;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    invoke-static {v1}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/parse/ParseIOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0

    :cond_0
    if-lt v1, v3, :cond_1

    :try_start_3
    const-string v0, "code"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "error"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/parse/ParseRESTCommand;->newTemporaryException(ILjava/lang/String;)Lcom/parse/ParseException;

    move-result-object v0

    invoke-static {v0}, La/j;->a(Ljava/lang/Exception;)La/j;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v2}, La/j;->a(Ljava/lang/Object;)La/j;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "bad json response"

    invoke-virtual {p0, v1, v0}, Lcom/parse/ParseRESTCommand;->newTemporaryException(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/parse/ParseException;

    move-result-object v0

    invoke-static {v0}, La/j;->a(Ljava/lang/Exception;)La/j;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/parse/ParseRESTCommand;->newPermanentException(ILjava/lang/String;)Lcom/parse/ParseException;

    move-result-object v0

    invoke-static {v0}, La/j;->a(Ljava/lang/Exception;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public releaseLocalIds()V
    .locals 3

    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/parse/ParseRESTCommand;->getLocalIdManager()Lcom/parse/LocalIdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/LocalIdManager;->releaseLocalIdOnDisk(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/parse/ParseRESTCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "localId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/parse/ParseRESTCommand;->getLocalIdManager()Lcom/parse/LocalIdManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/parse/LocalIdManager;->releaseLocalIdOnDisk(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    return-void
.end method

.method public resolveLocalIds()V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/parse/ParseRESTCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "localId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lcom/parse/ParseRESTCommand;->getLocalIdManager()Lcom/parse/LocalIdManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/parse/LocalIdManager;->getObjectId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Tried to serialize a command referencing a new, unsaved object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    :goto_1
    return-void

    :cond_0
    const-string v3, "objectId"

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "localId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/parse/ParseRESTCommand;->maybeChangeServerOperation()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public retainLocalIds()V
    .locals 3

    iget-object v0, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/parse/ParseRESTCommand;->getLocalIdManager()Lcom/parse/LocalIdManager;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/LocalIdManager;->retainLocalIdOnDisk(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    invoke-static {v1, v0}, Lcom/parse/ParseRESTCommand;->getLocalPointersIn(Ljava/lang/Object;Ljava/util/ArrayList;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v2, "localId"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/parse/ParseRESTCommand;->getLocalIdManager()Lcom/parse/LocalIdManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/parse/LocalIdManager;->retainLocalIdOnDisk(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    return-void
.end method

.method public setLocalId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    return-void
.end method

.method setOperationSetUUID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseRESTCommand;->operationSetUUID:Ljava/lang/String;

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "httpPath"

    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->httpPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v1, "httpMethod"

    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->method:Lcom/parse/a/b$b;

    invoke-virtual {v2}, Lcom/parse/a/b$b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    const-string v1, "parameters"

    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->jsonParameters:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "sessionToken"

    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->sessionToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v1, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, "localId"

    iget-object v2, p0, Lcom/parse/ParseRESTCommand;->localId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
