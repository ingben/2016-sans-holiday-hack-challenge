.class Lcom/parse/ParseSQLiteDatabase$13;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseSQLiteDatabase;->closeAsync()La/j;
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
.field final synthetic this$0:Lcom/parse/ParseSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseSQLiteDatabase$13;->this$0:Lcom/parse/ParseSQLiteDatabase;

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
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$13;->this$0:Lcom/parse/ParseSQLiteDatabase;

    # getter for: Lcom/parse/ParseSQLiteDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/parse/ParseSQLiteDatabase;->access$300(Lcom/parse/ParseSQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$13;->this$0:Lcom/parse/ParseSQLiteDatabase;

    # getter for: Lcom/parse/ParseSQLiteDatabase;->tcs:La/k;
    invoke-static {v0}, Lcom/parse/ParseSQLiteDatabase;->access$200(Lcom/parse/ParseSQLiteDatabase;)La/k;

    move-result-object v0

    invoke-virtual {v0, v2}, La/k;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$13;->this$0:Lcom/parse/ParseSQLiteDatabase;

    # getter for: Lcom/parse/ParseSQLiteDatabase;->tcs:La/k;
    invoke-static {v0}, Lcom/parse/ParseSQLiteDatabase;->access$200(Lcom/parse/ParseSQLiteDatabase;)La/k;

    move-result-object v0

    invoke-virtual {v0}, La/k;->a()La/j;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase$13;->this$0:Lcom/parse/ParseSQLiteDatabase;

    # getter for: Lcom/parse/ParseSQLiteDatabase;->tcs:La/k;
    invoke-static {v1}, Lcom/parse/ParseSQLiteDatabase;->access$200(Lcom/parse/ParseSQLiteDatabase;)La/k;

    move-result-object v1

    invoke-virtual {v1, v2}, La/k;->b(Ljava/lang/Object;)V

    throw v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseSQLiteDatabase$13;->then(La/j;)La/j;

    move-result-object v0

    return-object v0
.end method
