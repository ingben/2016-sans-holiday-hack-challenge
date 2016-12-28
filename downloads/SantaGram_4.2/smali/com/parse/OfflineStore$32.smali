.class Lcom/parse/OfflineStore$32;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->deleteDataForObjectAsync(Lcom/parse/ParseObject;Lcom/parse/ParseSQLiteDatabase;)La/j;
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
        "Landroid/database/Cursor;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$db:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$uuid:La/g;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;La/g;Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineStore$32;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$32;->val$uuid:La/g;

    iput-object p3, p0, Lcom/parse/OfflineStore$32;->val$db:Lcom/parse/ParseSQLiteDatabase;

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
            "Ljava/lang/String;",
            ">;)",
            "La/j",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    new-array v1, v3, [Ljava/lang/String;

    const-string v0, "key"

    aput-object v0, v1, v4

    const-string v2, "uuid=?"

    new-array v3, v3, [Ljava/lang/String;

    iget-object v0, p0, Lcom/parse/OfflineStore$32;->val$uuid:La/g;

    invoke-virtual {v0}, La/g;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v4

    iget-object v0, p0, Lcom/parse/OfflineStore$32;->val$db:Lcom/parse/ParseSQLiteDatabase;

    const-string v4, "Dependencies"

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/parse/ParseSQLiteDatabase;->queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$32;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
