.class Lcom/parse/OfflineStore$10;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->fetchLocallyAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)La/j;
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
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$object:Lcom/parse/ParseObject;

.field final synthetic val$tcs:La/k;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;La/k;Lcom/parse/ParseObject;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineStore$10;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$10;->val$tcs:La/k;

    iput-object p3, p0, Lcom/parse/OfflineStore$10;->val$object:Lcom/parse/ParseObject;

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
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/parse/OfflineStore$10;->val$tcs:La/k;

    invoke-virtual {v0}, La/k;->c()V

    :goto_0
    iget-object v0, p0, Lcom/parse/OfflineStore$10;->val$tcs:La/k;

    invoke-virtual {v0}, La/k;->a()La/j;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, La/j;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/parse/OfflineStore$10;->val$tcs:La/k;

    invoke-virtual {p1}, La/j;->g()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v0, v1}, La/k;->b(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/parse/OfflineStore$10;->val$tcs:La/k;

    iget-object v1, p0, Lcom/parse/OfflineStore$10;->val$object:Lcom/parse/ParseObject;

    invoke-virtual {v0, v1}, La/k;->b(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$10;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
