.class Lcom/parse/NetworkObjectController$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/NetworkObjectController;->fetchAsync(Lcom/parse/ParseObject$State;Ljava/lang/String;Lcom/parse/ParseDecoder;)La/j;
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
.field final synthetic this$0:Lcom/parse/NetworkObjectController;

.field final synthetic val$decoder:Lcom/parse/ParseDecoder;

.field final synthetic val$state:Lcom/parse/ParseObject$State;


# direct methods
.method constructor <init>(Lcom/parse/NetworkObjectController;Lcom/parse/ParseObject$State;Lcom/parse/ParseDecoder;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/NetworkObjectController$1;->this$0:Lcom/parse/NetworkObjectController;

    iput-object p2, p0, Lcom/parse/NetworkObjectController$1;->val$state:Lcom/parse/ParseObject$State;

    iput-object p3, p0, Lcom/parse/NetworkObjectController$1;->val$decoder:Lcom/parse/ParseDecoder;

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

    iget-object v1, p0, Lcom/parse/NetworkObjectController$1;->val$state:Lcom/parse/ParseObject$State;

    invoke-virtual {v1}, Lcom/parse/ParseObject$State;->newBuilder()Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseObject$State$Init;->clear()Lcom/parse/ParseObject$State$Init;

    move-result-object v1

    iget-object v2, p0, Lcom/parse/NetworkObjectController$1;->this$0:Lcom/parse/NetworkObjectController;

    # getter for: Lcom/parse/NetworkObjectController;->coder:Lcom/parse/ParseObjectCoder;
    invoke-static {v2}, Lcom/parse/NetworkObjectController;->access$000(Lcom/parse/NetworkObjectController;)Lcom/parse/ParseObjectCoder;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/NetworkObjectController$1;->val$decoder:Lcom/parse/ParseDecoder;

    invoke-virtual {v2, v1, v0, v3}, Lcom/parse/ParseObjectCoder;->decode(Lcom/parse/ParseObject$State$Init;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject$State$Init;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseObject$State$Init;->build()Lcom/parse/ParseObject$State;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/NetworkObjectController$1;->then(La/j;)Lcom/parse/ParseObject$State;

    move-result-object v0

    return-object v0
.end method
