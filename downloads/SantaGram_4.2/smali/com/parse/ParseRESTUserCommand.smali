.class Lcom/parse/ParseRESTUserCommand;
.super Lcom/parse/ParseRESTCommand;


# static fields
.field private static final HEADER_REVOCABLE_SESSION:Ljava/lang/String; = "X-Parse-Revocable-Session"

.field private static final HEADER_TRUE:Ljava/lang/String; = "1"


# instance fields
.field private isRevocableSessionEnabled:Z

.field private statusCode:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/parse/a/b$b;Ljava/util/Map;Ljava/lang/String;)V
    .locals 6
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

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseRESTUserCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Ljava/util/Map;Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/parse/a/b$b;Ljava/util/Map;Ljava/lang/String;Z)V
    .locals 0
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
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Ljava/util/Map;Ljava/lang/String;)V

    iput-boolean p5, p0, Lcom/parse/ParseRESTUserCommand;->isRevocableSessionEnabled:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/parse/a/b$b;Lorg/json/JSONObject;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Lorg/json/JSONObject;Ljava/lang/String;)V

    iput-boolean p5, p0, Lcom/parse/ParseRESTUserCommand;->isRevocableSessionEnabled:Z

    return-void
.end method

.method public static getCurrentUserCommand(Ljava/lang/String;)Lcom/parse/ParseRESTUserCommand;
    .locals 4

    new-instance v0, Lcom/parse/ParseRESTUserCommand;

    const-string v1, "users/me"

    sget-object v2, Lcom/parse/a/b$b;->a:Lcom/parse/a/b$b;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/parse/ParseRESTUserCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method public static logInUserCommand(Ljava/lang/String;Ljava/lang/String;Z)Lcom/parse/ParseRESTUserCommand;
    .locals 6

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "username"

    invoke-interface {v3, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "password"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/parse/ParseRESTUserCommand;

    const-string v1, "login"

    sget-object v2, Lcom/parse/a/b$b;->a:Lcom/parse/a/b$b;

    const/4 v4, 0x0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseRESTUserCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Ljava/util/Map;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static resetPasswordResetCommand(Ljava/lang/String;)Lcom/parse/ParseRESTUserCommand;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "email"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/parse/ParseRESTUserCommand;

    const-string v2, "requestPasswordReset"

    sget-object v3, Lcom/parse/a/b$b;->b:Lcom/parse/a/b$b;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/parse/ParseRESTUserCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Ljava/util/Map;Ljava/lang/String;)V

    return-object v1
.end method

.method public static serviceLogInUserCommand(Ljava/lang/String;Ljava/util/Map;Z)Lcom/parse/ParseRESTUserCommand;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)",
            "Lcom/parse/ParseRESTUserCommand;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Lcom/parse/PointerEncoder;->get()Lcom/parse/PointerEncoder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/parse/PointerEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "authData"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    invoke-static {v1, v0, p2}, Lcom/parse/ParseRESTUserCommand;->serviceLogInUserCommand(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseRESTUserCommand;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "could not serialize object to JSON"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static serviceLogInUserCommand(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseRESTUserCommand;
    .locals 6

    new-instance v0, Lcom/parse/ParseRESTUserCommand;

    const-string v1, "users"

    sget-object v2, Lcom/parse/a/b$b;->b:Lcom/parse/a/b$b;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseRESTUserCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static signUpUserCommand(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseRESTUserCommand;
    .locals 6

    new-instance v0, Lcom/parse/ParseRESTUserCommand;

    const-string v1, "classes/_User"

    sget-object v2, Lcom/parse/a/b$b;->b:Lcom/parse/a/b$b;

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseRESTUserCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Lorg/json/JSONObject;Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method protected addAdditionalHeaders(Lcom/parse/a/b$a;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/parse/ParseRESTCommand;->addAdditionalHeaders(Lcom/parse/a/b$a;)V

    iget-boolean v0, p0, Lcom/parse/ParseRESTUserCommand;->isRevocableSessionEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "X-Parse-Revocable-Session"

    const-string v1, "1"

    invoke-virtual {p1, v0, v1}, Lcom/parse/a/b$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/a/b$a;

    :cond_0
    return-void
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lcom/parse/ParseRESTUserCommand;->statusCode:I

    return v0
.end method

.method protected onResponseAsync(Lcom/parse/a/c;Lcom/parse/ProgressCallback;)La/j;
    .locals 1
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

    invoke-virtual {p1}, Lcom/parse/a/c;->a()I

    move-result v0

    iput v0, p0, Lcom/parse/ParseRESTUserCommand;->statusCode:I

    invoke-super {p0, p1, p2}, Lcom/parse/ParseRESTCommand;->onResponseAsync(Lcom/parse/a/c;Lcom/parse/ProgressCallback;)La/j;

    move-result-object v0

    return-object v0
.end method
