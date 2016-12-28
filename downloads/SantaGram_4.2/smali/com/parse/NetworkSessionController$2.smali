.class Lcom/parse/NetworkSessionController$2;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/NetworkSessionController;->upgradeToRevocable(Ljava/lang/String;)La/j;
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
        "Lcom/parse/ParseObject$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/NetworkSessionController;


# direct methods
.method constructor <init>(Lcom/parse/NetworkSessionController;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/NetworkSessionController$2;->this$0:Lcom/parse/NetworkSessionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)Lcom/parse/ParseObject$State;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Lorg/json/JSONObject;",
            ">;)",
            "Lcom/parse/ParseObject$State;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/parse/NetworkSessionController$2;->this$0:Lcom/parse/NetworkSessionController;

    # getter for: Lcom/parse/NetworkSessionController;->coder:Lcom/parse/ParseObjectCoder;
    invoke-static {v1}, Lcom/parse/NetworkSessionController;->access$000(Lcom/parse/NetworkSessionController;)Lcom/parse/ParseObjectCoder;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseObject$State$Builder;

    const-string v3, "_Session"

    invoke-direct {v2, v3}, Lcom/parse/ParseObject$State$Builder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/parse/ParseObjectCoder;->decode(Lcom/parse/ParseObject$State$Init;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject$State$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject$State$Builder;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseObject$State$Builder;->build()Lcom/parse/ParseObject$State;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/NetworkSessionController$2;->then(La/j;)Lcom/parse/ParseObject$State;

    move-result-object v0

    return-object v0
.end method
