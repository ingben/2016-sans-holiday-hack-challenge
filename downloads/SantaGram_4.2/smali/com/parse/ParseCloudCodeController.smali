.class Lcom/parse/ParseCloudCodeController;
.super Ljava/lang/Object;


# instance fields
.field final restClient:Lcom/parse/ParseHttpClient;


# direct methods
.method public constructor <init>(Lcom/parse/ParseHttpClient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/parse/ParseCloudCodeController;->restClient:Lcom/parse/ParseHttpClient;

    return-void
.end method


# virtual methods
.method public callFunctionInBackground(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "La/j",
            "<TT;>;"
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/parse/ParseRESTCloudCommand;->callFunctionCommand(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lcom/parse/ParseRESTCloudCommand;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseCloudCodeController;->restClient:Lcom/parse/ParseHttpClient;

    invoke-virtual {v0, v1}, Lcom/parse/ParseRESTCommand;->executeAsync(Lcom/parse/ParseHttpClient;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseCloudCodeController$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseCloudCodeController$1;-><init>(Lcom/parse/ParseCloudCodeController;)V

    invoke-virtual {v0, v1}, La/j;->c(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method convertCloudResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p1, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/json/JSONObject;

    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :cond_0
    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object p1, v0

    :cond_1
    return-object p1
.end method
