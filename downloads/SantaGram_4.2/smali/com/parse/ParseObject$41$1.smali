.class Lcom/parse/ParseObject$41$1;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseObject$41;->then(La/j;)La/j;
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
.field final synthetic this$0:Lcom/parse/ParseObject$41;

.field final synthetic val$current:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/ParseObject$41;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseObject$41$1;->this$0:Lcom/parse/ParseObject$41;

    iput-object p2, p0, Lcom/parse/ParseObject$41$1;->val$current:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)La/j;
    .locals 2
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

    iget-object v0, p0, Lcom/parse/ParseObject$41$1;->val$current:Ljava/util/List;

    iget-object v1, p0, Lcom/parse/ParseObject$41$1;->this$0:Lcom/parse/ParseObject$41;

    iget-object v1, v1, Lcom/parse/ParseObject$41;->val$sessionToken:Ljava/lang/String;

    # invokes: Lcom/parse/ParseObject;->saveAllAsync(Ljava/util/List;Ljava/lang/String;La/j;)La/j;
    invoke-static {v0, v1, p1}, Lcom/parse/ParseObject;->access$1600(Ljava/util/List;Ljava/lang/String;La/j;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseObject$41$1;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
