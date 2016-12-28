.class Lcom/parse/ParseObject$13;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->saveAsync(Ljava/lang/String;La/j;)La/j;
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
        "Ljava/lang/Void;",
        "La/j",
        "<",
        "Lcom/parse/ParseObject$State;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$operations:Lcom/parse/ParseOperationSet;

.field final synthetic val$sessionToken:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Lcom/parse/ParseOperationSet;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseObject$13;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$13;->val$operations:Lcom/parse/ParseOperationSet;

    iput-object p3, p0, Lcom/parse/ParseObject$13;->val$sessionToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Lcom/parse/ParseObject$State;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseObject$13;->this$0:Lcom/parse/ParseObject;

    # invokes: Lcom/parse/ParseObject;->collectFetchedObjects()Ljava/util/Map;
    invoke-static {v0}, Lcom/parse/ParseObject;->access$700(Lcom/parse/ParseObject;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/parse/KnownParseObjectDecoder;

    invoke-direct {v1, v0}, Lcom/parse/KnownParseObjectDecoder;-><init>(Ljava/util/Map;)V

    # invokes: Lcom/parse/ParseObject;->getObjectController()Lcom/parse/ParseObjectController;
    invoke-static {}, Lcom/parse/ParseObject;->access$800()Lcom/parse/ParseObjectController;

    move-result-object v0

    iget-object v2, p0, Lcom/parse/ParseObject$13;->this$0:Lcom/parse/ParseObject;

    invoke-virtual {v2}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v2

    iget-object v3, p0, Lcom/parse/ParseObject$13;->val$operations:Lcom/parse/ParseOperationSet;

    iget-object v4, p0, Lcom/parse/ParseObject$13;->val$sessionToken:Ljava/lang/String;

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/parse/ParseObjectController;->saveAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Ljava/lang/String;Lcom/parse/ParseDecoder;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$13;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
