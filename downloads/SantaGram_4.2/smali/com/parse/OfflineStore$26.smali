.class Lcom/parse/OfflineStore$26;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->updateDataForObjectAsync(Lcom/parse/ParseObject;)La/j;
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
        "Lcom/parse/ParseObject;",
        "La/j",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$object:Lcom/parse/ParseObject;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/ParseObject;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineStore$26;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$26;->val$object:Lcom/parse/ParseObject;

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
            "Lcom/parse/ParseObject;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, La/j;->g()Ljava/lang/Exception;

    move-result-object v0

    instance-of v0, v0, Lcom/parse/ParseException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, La/j;->g()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseException;

    invoke-virtual {v0}, Lcom/parse/ParseException;->getCode()I

    move-result v0

    const/16 v1, 0x78

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, La/j;->k()La/j;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/parse/OfflineStore$26;->this$0:Lcom/parse/OfflineStore;

    # getter for: Lcom/parse/OfflineStore;->helper:Lcom/parse/OfflineSQLiteOpenHelper;
    invoke-static {v0}, Lcom/parse/OfflineStore;->access$1300(Lcom/parse/OfflineStore;)Lcom/parse/OfflineSQLiteOpenHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/OfflineSQLiteOpenHelper;->getWritableDatabaseAsync()La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineStore$26$1;

    invoke-direct {v1, p0}, Lcom/parse/OfflineStore$26$1;-><init>(Lcom/parse/OfflineStore$26;)V

    invoke-virtual {v0, v1}, La/j;->b(La/h;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$26;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
