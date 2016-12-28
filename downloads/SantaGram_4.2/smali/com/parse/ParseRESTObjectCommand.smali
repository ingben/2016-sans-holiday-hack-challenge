.class Lcom/parse/ParseRESTObjectCommand;
.super Lcom/parse/ParseRESTCommand;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/parse/a/b$b;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private static createObjectCommand(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;
    .locals 4

    const-string v0, "classes/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseRESTObjectCommand;

    sget-object v2, Lcom/parse/a/b$b;->b:Lcom/parse/a/b$b;

    invoke-direct {v1, v0, v2, p1, p2}, Lcom/parse/ParseRESTObjectCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v1
.end method

.method public static deleteObjectCommand(Lcom/parse/ParseObject$State;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v0, "classes/%s"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/parse/ParseObject$State;->className()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/%s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/parse/ParseRESTObjectCommand;

    sget-object v2, Lcom/parse/a/b$b;->d:Lcom/parse/a/b$b;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3, p1}, Lcom/parse/ParseRESTObjectCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getObjectCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;
    .locals 4

    const-string v0, "classes/%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseRESTObjectCommand;

    sget-object v2, Lcom/parse/a/b$b;->a:Lcom/parse/a/b$b;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3, p2}, Lcom/parse/ParseRESTObjectCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v1
.end method

.method public static saveObjectCommand(Lcom/parse/ParseObject$State;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;
    .locals 2

    invoke-virtual {p0}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseObject$State;->className()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/parse/ParseRESTObjectCommand;->createObjectCommand(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/parse/ParseObject$State;->objectId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/parse/ParseObject$State;->className()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/parse/ParseRESTObjectCommand;->updateObjectCommand(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;

    move-result-object v0

    goto :goto_0
.end method

.method private static updateObjectCommand(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Lcom/parse/ParseRESTObjectCommand;
    .locals 4

    const-string v0, "classes/%s/%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseRESTObjectCommand;

    sget-object v2, Lcom/parse/a/b$b;->c:Lcom/parse/a/b$b;

    invoke-direct {v1, v0, v2, p2, p3}, Lcom/parse/ParseRESTObjectCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Lorg/json/JSONObject;Ljava/lang/String;)V

    return-object v1
.end method
