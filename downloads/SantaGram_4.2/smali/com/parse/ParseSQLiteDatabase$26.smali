.class Lcom/parse/ParseSQLiteDatabase$26;
.super Ljava/lang/Object;

# interfaces
.implements La/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/ParseSQLiteDatabase;->rawQueryAsync(Ljava/lang/String;[Ljava/lang/String;)La/j;
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
        "Landroid/database/Cursor;",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/ParseSQLiteDatabase;


# direct methods
.method constructor <init>(Lcom/parse/ParseSQLiteDatabase;)V
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseSQLiteDatabase$26;->this$0:Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(La/j;)Landroid/database/Cursor;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/j",
            "<",
            "Landroid/database/Cursor;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    invoke-virtual {p1}, La/j;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    # getter for: Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;
    invoke-static {}, Lcom/parse/ParseSQLiteDatabase;->access$500()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/parse/ParseSQLiteCursor;->create(Landroid/database/Cursor;Ljava/util/concurrent/Executor;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    return-object v0
.end method

.method public bridge synthetic then(La/j;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/ParseSQLiteDatabase$26;->then(La/j;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method
