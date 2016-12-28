.class Lcom/parse/OfflineStore$18;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->saveLocallyAsync(Lcom/parse/ParseObject;Ljava/util/List;Lcom/parse/ParseSQLiteDatabase;)La/j;
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
        "Ljava/lang/String;",
        "La/j",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineStore$18;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$18;->val$db:Lcom/parse/ParseSQLiteDatabase;

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
            "Ljava/lang/String;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/parse/OfflineStore$18;->this$0:Lcom/parse/OfflineStore;

    iget-object v2, p0, Lcom/parse/OfflineStore$18;->val$db:Lcom/parse/ParseSQLiteDatabase;

    # invokes: Lcom/parse/OfflineStore;->unpinAsync(Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)La/j;
    invoke-static {v1, v0, v2}, Lcom/parse/OfflineStore;->access$1000(Lcom/parse/OfflineStore;Ljava/lang/String;Lcom/parse/ParseSQLiteDatabase;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$18;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
