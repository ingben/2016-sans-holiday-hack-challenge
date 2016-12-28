.class Lcom/parse/ParseRESTSessionCommand;
.super Lcom/parse/ParseRESTCommand;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/parse/a/b$b;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method public static getCurrentSessionCommand(Ljava/lang/String;)Lcom/parse/ParseRESTSessionCommand;
    .locals 4

    new-instance v0, Lcom/parse/ParseRESTSessionCommand;

    const-string v1, "sessions/me"

    sget-object v2, Lcom/parse/a/b$b;->a:Lcom/parse/a/b$b;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/parse/ParseRESTSessionCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v0
.end method

.method public static revoke(Ljava/lang/String;)Lcom/parse/ParseRESTSessionCommand;
    .locals 4

    new-instance v0, Lcom/parse/ParseRESTSessionCommand;

    const-string v1, "logout"

    sget-object v2, Lcom/parse/a/b$b;->b:Lcom/parse/a/b$b;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/parse/ParseRESTSessionCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v0
.end method

.method public static upgradeToRevocableSessionCommand(Ljava/lang/String;)Lcom/parse/ParseRESTSessionCommand;
    .locals 4

    new-instance v0, Lcom/parse/ParseRESTSessionCommand;

    const-string v1, "upgradeToRevocableSession"

    sget-object v2, Lcom/parse/a/b$b;->b:Lcom/parse/a/b$b;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/parse/ParseRESTSessionCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v0
.end method
