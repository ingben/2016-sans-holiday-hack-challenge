.class Lcom/parse/ParseObject$15;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject;->enqueueSaveEventuallyOperationAsync(Lcom/parse/ParseOperationSet;)La/j;
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
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseObject;

.field final synthetic val$operationSet:Lcom/parse/ParseOperationSet;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject;Lcom/parse/ParseOperationSet;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseObject$15;->this$0:Lcom/parse/ParseObject;

    iput-object p2, p0, Lcom/parse/ParseObject$15;->val$operationSet:Lcom/parse/ParseOperationSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/parse/ParseObject$15$1;

    invoke-direct {v0, p0}, Lcom/parse/ParseObject$15$1;-><init>(Lcom/parse/ParseObject$15;)V

    invoke-virtual {p1, v0}, La/j;->b(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$15;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
