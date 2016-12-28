.class Lcom/parse/ParseSQLiteDatabase$24;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseSQLiteDatabase;->deleteAsync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)La/j;
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
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseSQLiteDatabase;

.field final synthetic val$args:[Ljava/lang/String;

.field final synthetic val$table:Ljava/lang/String;

.field final synthetic val$where:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseSQLiteDatabase$24;->this$0:Lcom/parse/ParseSQLiteDatabase;

    iput-object p2, p0, Lcom/parse/ParseSQLiteDatabase$24;->val$table:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/ParseSQLiteDatabase$24;->val$where:Ljava/lang/String;

    iput-object p4, p0, Lcom/parse/ParseSQLiteDatabase$24;->val$args:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)Ljava/lang/Integer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase$24;->this$0:Lcom/parse/ParseSQLiteDatabase;

    # getter for: Lcom/parse/ParseSQLiteDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/parse/ParseSQLiteDatabase;->access$300(Lcom/parse/ParseSQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase$24;->val$table:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/ParseSQLiteDatabase$24;->val$where:Ljava/lang/String;

    iget-object v3, p0, Lcom/parse/ParseSQLiteDatabase$24;->val$args:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseSQLiteDatabase$24;->then(La/j;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
