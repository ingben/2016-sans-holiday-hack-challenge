.class Lcom/parse/ParseRESTCloudCommand;
.super Lcom/parse/ParseRESTCommand;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/parse/a/b$b;Ljava/util/Map;Ljava/lang/String;)V
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

.method public static callFunctionCommand(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseRESTCloudCommand;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseRESTCloudCommand;"
        }
    .end annotation

    const-string v0, "functions/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseRESTCloudCommand;

    sget-object v2, Lcom/parse/a/b$b;->b:Lcom/parse/a/b$b;

    invoke-direct {v1, v0, v2, p1, p2}, Lcom/parse/ParseRESTCloudCommand;-><init>(Ljava/lang/String;Lcom/parse/a/b$b;Ljava/util/Map;Ljava/lang/String;)V

    return-object v1
.end method
