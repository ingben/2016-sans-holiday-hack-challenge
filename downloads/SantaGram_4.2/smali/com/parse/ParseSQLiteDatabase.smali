.class Lcom/parse/ParseSQLiteDatabase;
.super Ljava/lang/Object;


# static fields
.field private static final dbExecutor:Ljava/util/concurrent/ExecutorService;

.field private static final taskQueue:Lcom/parse/TaskQueue;


# instance fields
.field private current:La/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final currentLock:Ljava/lang/Object;

.field private db:Landroid/database/sqlite/SQLiteDatabase;

.field private openFlags:I

.field private final tcs:La/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/k",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    sput-object v0, Lcom/parse/ParseSQLiteDatabase;->taskQueue:Lcom/parse/TaskQueue;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    new-instance v0, La/k;

    invoke-direct {v0}, La/k;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->tcs:La/k;

    iput p1, p0, Lcom/parse/ParseSQLiteDatabase;->openFlags:I

    sget-object v0, Lcom/parse/ParseSQLiteDatabase;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseSQLiteDatabase$2;

    invoke-direct {v1, p0}, Lcom/parse/ParseSQLiteDatabase$2;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(La/h;)La/j;

    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseSQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Lcom/parse/ParseSQLiteDatabase;La/j;)La/j;
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    return-object p1
.end method

.method static synthetic access$200(Lcom/parse/ParseSQLiteDatabase;)La/k;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->tcs:La/k;

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/ParseSQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic access$302(Lcom/parse/ParseSQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseSQLiteDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method static synthetic access$400(Lcom/parse/ParseSQLiteDatabase;)I
    .locals 1

    iget v0, p0, Lcom/parse/ParseSQLiteDatabase;->openFlags:I

    return v0
.end method

.method static synthetic access$500()Ljava/util/concurrent/ExecutorService;
    .locals 1

    sget-object v0, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static openDatabaseAsync(Landroid/database/sqlite/SQLiteOpenHelper;I)La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteOpenHelper;",
            "I)",
            "La/j",
            "<",
            "Lcom/parse/ParseSQLiteDatabase;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/parse/ParseSQLiteDatabase;

    invoke-direct {v0, p1}, Lcom/parse/ParseSQLiteDatabase;-><init>(I)V

    invoke-virtual {v0, p0}, Lcom/parse/ParseSQLiteDatabase;->open(Landroid/database/sqlite/SQLiteOpenHelper;)La/j;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$1;

    invoke-direct {v2, v0}, Lcom/parse/ParseSQLiteDatabase$1;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v1, v2}, La/j;->b(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public beginTransactionAsync()La/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$7;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$7;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, La/j;->b(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$8;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$8;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, La/j;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, La/j;->b(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public closeAsync()La/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$13;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$13;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, La/j;->b(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$14;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$14;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, La/j;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, La/j;->b(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteAsync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)La/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$24;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/parse/ParseSQLiteDatabase$24;-><init>(Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v3, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, La/j;->c(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    invoke-virtual {v0}, La/j;->k()La/j;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$25;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$25;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, La/j;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, La/j;->b(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    invoke-virtual {v0}, La/j;->k()La/j;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public endTransactionAsync()La/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$11;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$11;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, La/j;->a(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$12;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$12;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, La/j;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, La/j;->b(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public inTransaction()Z
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    return v0
.end method

.method public insertOrThrowAsync(Ljava/lang/String;Landroid/content/ContentValues;)La/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$20;

    invoke-direct {v2, p0, p1, p2}, Lcom/parse/ParseSQLiteDatabase$20;-><init>(Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;)V

    sget-object v3, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, La/j;->c(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    invoke-virtual {v0}, La/j;->k()La/j;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$21;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$21;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, La/j;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, La/j;->b(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    invoke-virtual {v0}, La/j;->k()La/j;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public insertWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;I)La/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "I)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$18;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/parse/ParseSQLiteDatabase$18;-><init>(Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;I)V

    sget-object v3, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, La/j;->c(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    invoke-virtual {v0}, La/j;->k()La/j;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$19;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$19;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, La/j;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, La/j;->b(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    invoke-virtual {v0}, La/j;->k()La/j;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOpenAsync()La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$4;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$4;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v2}, La/j;->a(La/h;)La/j;

    move-result-object v0

    invoke-virtual {v0}, La/j;->k()La/j;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isReadOnlyAsync()La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$3;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$3;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    invoke-virtual {v0, v2}, La/j;->a(La/h;)La/j;

    move-result-object v0

    invoke-virtual {v0}, La/j;->k()La/j;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method open(Landroid/database/sqlite/SQLiteOpenHelper;)La/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteOpenHelper;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$6;

    invoke-direct {v2, p0, p1}, Lcom/parse/ParseSQLiteDatabase$6;-><init>(Lcom/parse/ParseSQLiteDatabase;Landroid/database/sqlite/SQLiteOpenHelper;)V

    sget-object v3, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, La/j;->a(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$5;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$5;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, La/j;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, La/j;->b(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public queryAsync(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)La/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "La/j",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    iget-object v6, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    new-instance v0, Lcom/parse/ParseSQLiteDatabase$16;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseSQLiteDatabase$16;-><init>(Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v7, v0, v1}, La/j;->c(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseSQLiteDatabase$15;

    invoke-direct {v1, p0}, Lcom/parse/ParseSQLiteDatabase$15;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v2, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, La/j;->c(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    invoke-virtual {v0}, La/j;->k()La/j;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    new-instance v1, Lcom/parse/ParseSQLiteDatabase$17;

    invoke-direct {v1, p0}, Lcom/parse/ParseSQLiteDatabase$17;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v2, La/j;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, La/j;->b(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    monitor-exit v6

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public rawQueryAsync(Ljava/lang/String;[Ljava/lang/String;)La/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "La/j",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$27;

    invoke-direct {v2, p0, p1, p2}, Lcom/parse/ParseSQLiteDatabase$27;-><init>(Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v3, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, La/j;->c(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$26;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$26;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, La/j;->c(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    invoke-virtual {v0}, La/j;->k()La/j;

    move-result-object v2

    iput-object v2, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$28;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$28;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, La/j;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, La/j;->b(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTransactionSuccessfulAsync()La/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$9;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$9;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, La/j;->d(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    iget-object v0, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    new-instance v2, Lcom/parse/ParseSQLiteDatabase$10;

    invoke-direct {v2, p0}, Lcom/parse/ParseSQLiteDatabase$10;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v3, La/j;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v2, v3}, La/j;->b(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateAsync(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)La/j;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v6, p0, Lcom/parse/ParseSQLiteDatabase;->currentLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    new-instance v0, Lcom/parse/ParseSQLiteDatabase$22;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseSQLiteDatabase$22;-><init>(Lcom/parse/ParseSQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v1, Lcom/parse/ParseSQLiteDatabase;->dbExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v7, v0, v1}, La/j;->c(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    invoke-virtual {v0}, La/j;->k()La/j;

    move-result-object v1

    iput-object v1, p0, Lcom/parse/ParseSQLiteDatabase;->current:La/j;

    new-instance v1, Lcom/parse/ParseSQLiteDatabase$23;

    invoke-direct {v1, p0}, Lcom/parse/ParseSQLiteDatabase$23;-><init>(Lcom/parse/ParseSQLiteDatabase;)V

    sget-object v2, La/j;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, La/j;->b(La/h;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    monitor-exit v6

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
