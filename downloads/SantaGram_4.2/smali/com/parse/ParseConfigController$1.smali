.class Lcom/parse/ParseConfigController$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseConfigController;->getAsync(Ljava/lang/String;)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/h",
        "<",
        "Lorg/json/JSONObject;",
        "La/j",
        "<",
        "Lcom/parse/ParseConfig;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseConfigController;


# direct methods
.method constructor <init>(Lcom/parse/ParseConfigController;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseConfigController$1;->this$0:Lcom/parse/ParseConfigController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "La/j",
            "<",
            "Lcom/parse/ParseConfig;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/ParseConfig;->decode(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseConfigController$1;->this$0:Lcom/parse/ParseConfigController;

    # getter for: Lcom/parse/ParseConfigController;->currentConfigController:Lcom/parse/ParseCurrentConfigController;
    invoke-static {v1}, Lcom/parse/ParseConfigController;->access$000(Lcom/parse/ParseConfigController;)Lcom/parse/ParseCurrentConfigController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/parse/ParseCurrentConfigController;->setCurrentConfigAsync(Lcom/parse/ParseConfig;)La/j;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseConfigController$1$1;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseConfigController$1$1;-><init>(Lcom/parse/ParseConfigController$1;Lcom/parse/ParseConfig;)V

    invoke-virtual {v1, v2}, La/j;->a(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseConfigController$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
