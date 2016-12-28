.class Lcom/parse/ParseRESTConfigCommand;
.super Lcom/parse/ParseRESTCommand;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/parse/a/b$b;Ljava/util/Map;Ljava/lang/String;)V
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
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseRESTCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public static fetchConfigCommand(Ljava/lang/String;)Lcom/parse/ParseRESTConfigCommand;
    .locals 4

    new-instance v0, Lcom/parse/ParseRESTConfigCommand;

    const-string v1, "config"

    sget-object v2, Lcom/parse/a/b$b;->a:Lcom/parse/a/b$b;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/parse/ParseRESTConfigCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Ljava/util/Map;Ljava/lang/String;)V

    return-object v0
.end method

.method public static updateConfigCommand(Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseRESTConfigCommand;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseRESTConfigCommand;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "params"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v1, Lcom/parse/ParseRESTConfigCommand;

    const-string v2, "config"

    sget-object v3, Lcom/parse/a/b$b;->c:Lcom/parse/a/b$b;

    invoke-direct {v1, v2, v3, v0, p1}, Lcom/parse/ParseRESTConfigCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Ljava/util/Map;Ljava/lang/String;)V

    return-object v1
.end method
