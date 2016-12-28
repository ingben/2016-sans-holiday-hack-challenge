.class abstract Lcom/parse/ParseSQLiteOpenHelper;
.super Ljava/lang/Object;


# instance fields
.field private final helper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/parse/ParseSQLiteOpenHelper$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseSQLiteOpenHelper$1;-><init>(Lcom/parse/ParseSQLiteOpenHelper;Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-object v0, p0, Lcom/parse/ParseSQLiteOpenHelper;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    return-void
.end method

.method private getDatabaseAsync(Z)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "La/j",
            "<",
            "Lcom/parse/ParseSQLiteDatabase;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/parse/ParseSQLiteOpenHelper;->helper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/parse/ParseSQLiteDatabase;->openDatabaseAsync(Landroid/database/sqlite/SQLiteOpenHelper;I)La/j;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getReadableDatabaseAsync()La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Lcom/parse/ParseSQLiteDatabase;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parse/ParseSQLiteOpenHelper;->getDatabaseAsync(Z)La/j;

    move-result-object v0

    return-object v0
.end method

.method public getWritableDatabaseAsync()La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Lcom/parse/ParseSQLiteDatabase;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/parse/ParseSQLiteOpenHelper;->getDatabaseAsync(Z)La/j;

    move-result-object v0

    return-object v0
.end method

.method public abstract onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public abstract onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
.end method
