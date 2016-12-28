.class Lcom/parse/OfflineObjectStore$5;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineObjectStore;->existsAsync()La/j;
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
        "Ljava/lang/Integer;",
        "La/j",
        "<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineObjectStore;


# direct methods
.method constructor <init>(Lcom/parse/OfflineObjectStore;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineObjectStore$5;->this$0:Lcom/parse/OfflineObjectStore;

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
            "Ljava/lang/Integer;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/parse/OfflineObjectStore$5;->this$0:Lcom/parse/OfflineObjectStore;

    # getter for: Lcom/parse/OfflineObjectStore;->legacy:Lcom/parse/ParseObjectStore;
    invoke-static {v0}, Lcom/parse/OfflineObjectStore;->access$100(Lcom/parse/OfflineObjectStore;)Lcom/parse/ParseObjectStore;

    move-result-object v0

    invoke-interface {v0}, Lcom/parse/ParseObjectStore;->existsAsync()La/j;

    move-result-object v0

    goto :goto_1
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/OfflineObjectStore$5;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
