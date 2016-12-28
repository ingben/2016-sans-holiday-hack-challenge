.class Lcom/parse/OfflineStore$37;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/OfflineStore$SQLiteDatabaseCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parse/OfflineStore;->pinAllObjectsAsync(Ljava/lang/String;Ljava/util/List;Z)La/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parse/OfflineStore$SQLiteDatabaseCallable",
        "<",
        "La/j",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parse/OfflineStore;

.field final synthetic val$includeChildren:Z

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$objects:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/parse/OfflineStore;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0

    iput-object p1, p0, Lcom/parse/OfflineStore$37;->this$0:Lcom/parse/OfflineStore;

    iput-object p2, p0, Lcom/parse/OfflineStore$37;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/OfflineStore$37;->val$objects:Ljava/util/List;

    iput-boolean p4, p0, Lcom/parse/OfflineStore$37;->val$includeChildren:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/parse/ParseSQLiteDatabase;)La/j;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseSQLiteDatabase;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/OfflineStore$37;->this$0:Lcom/parse/OfflineStore;

    iget-object v1, p0, Lcom/parse/OfflineStore$37;->val$name:Ljava/lang/String;

    iget-object v2, p0, Lcom/parse/OfflineStore$37;->val$objects:Ljava/util/List;

    iget-boolean v3, p0, Lcom/parse/OfflineStore$37;->val$includeChildren:Z

    # invokes: Lcom/parse/OfflineStore;->pinAllObjectsAsync(Ljava/lang/String;Ljava/util/List;ZLcom/parse/ParseSQLiteDatabase;)La/j;
    invoke-static {v0, v1, v2, v3, p1}, Lcom/parse/OfflineStore;->access$1700(Lcom/parse/OfflineStore;Ljava/lang/String;Ljava/util/List;ZLcom/parse/ParseSQLiteDatabase;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call(Lcom/parse/ParseSQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/parse/OfflineStore$37;->call(Lcom/parse/ParseSQLiteDatabase;)La/j;

    move-result-object v0

    return-object v0
.end method
