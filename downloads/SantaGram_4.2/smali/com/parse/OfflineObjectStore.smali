.class Lcom/parse/OfflineObjectStore;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/parse/ParseObjectStore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/parse/ParseObjectStore",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final className:Ljava/lang/String;

.field private final legacy:Lcom/parse/ParseObjectStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseObjectStore",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final pinName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Lcom/parse/ParseObjectStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseObjectStore",
            "<TT;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/parse/OfflineObjectStore;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/ParseObjectSubclassingController;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/parse/OfflineObjectStore;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/parse/ParseObjectStore;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/parse/ParseObjectStore;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseObjectStore",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/parse/OfflineObjectStore;->className:Ljava/lang/String;

    iput-object p2, p0, Lcom/parse/OfflineObjectStore;->pinName:Ljava/lang/String;

    iput-object p3, p0, Lcom/parse/OfflineObjectStore;->legacy:Lcom/parse/ParseObjectStore;

    return-void
.end method

.method static synthetic access$000(Lcom/parse/OfflineObjectStore;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/OfflineObjectStore;->pinName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/OfflineObjectStore;)Lcom/parse/ParseObjectStore;
    .locals 1

    iget-object v0, p0, Lcom/parse/OfflineObjectStore;->legacy:Lcom/parse/ParseObjectStore;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParseObjectStore;Lcom/parse/ParseObjectStore;)La/j;
    .locals 1

    invoke-static {p0, p1}, Lcom/parse/OfflineObjectStore;->migrate(Lcom/parse/ParseObjectStore;Lcom/parse/ParseObjectStore;)La/j;

    move-result-object v0

    return-object v0
.end method

.method private static getSubclassingController()Lcom/parse/ParseObjectSubclassingController;
    .locals 1

    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    return-object v0
.end method

.method private static migrate(Lcom/parse/ParseObjectStore;Lcom/parse/ParseObjectStore;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseObjectStore",
            "<TT;>;",
            "Lcom/parse/ParseObjectStore",
            "<TT;>;)",
            "La/j",
            "<TT;>;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/parse/ParseObjectStore;->getAsync()La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineObjectStore$1;

    invoke-direct {v1, p0, p1}, Lcom/parse/OfflineObjectStore$1;-><init>(Lcom/parse/ParseObjectStore;Lcom/parse/ParseObjectStore;)V

    invoke-virtual {v0, v1}, La/j;->d(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deleteAsync()La/j;
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

    iget-object v0, p0, Lcom/parse/OfflineObjectStore;->pinName:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)La/j;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [La/j;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/parse/OfflineObjectStore;->legacy:Lcom/parse/ParseObjectStore;

    invoke-interface {v3}, Lcom/parse/ParseObjectStore;->deleteAsync()La/j;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, La/j;->a(Ljava/util/Collection;)La/j;

    move-result-object v1

    new-instance v2, Lcom/parse/OfflineObjectStore$6;

    invoke-direct {v2, p0, v0}, Lcom/parse/OfflineObjectStore$6;-><init>(Lcom/parse/OfflineObjectStore;La/j;)V

    invoke-virtual {v1, v2}, La/j;->b(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public existsAsync()La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/OfflineObjectStore;->className:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/OfflineObjectStore;->pinName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseQuery;->ignoreACLs()Lcom/parse/ParseQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseQuery;->countInBackground()La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineObjectStore$5;

    invoke-direct {v1, p0}, Lcom/parse/OfflineObjectStore$5;-><init>(Lcom/parse/OfflineObjectStore;)V

    invoke-virtual {v0, v1}, La/j;->d(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public getAsync()La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/OfflineObjectStore;->className:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/OfflineObjectStore;->pinName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseQuery;->ignoreACLs()Lcom/parse/ParseQuery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseQuery;->findInBackground()La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineObjectStore$4;

    invoke-direct {v1, p0}, Lcom/parse/OfflineObjectStore$4;-><init>(Lcom/parse/OfflineObjectStore;)V

    invoke-virtual {v0, v1}, La/j;->d(La/h;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineObjectStore$3;

    invoke-direct {v1, p0}, Lcom/parse/OfflineObjectStore$3;-><init>(Lcom/parse/OfflineObjectStore;)V

    invoke-virtual {v0, v1}, La/j;->d(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public setAsync(Lcom/parse/ParseObject;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/parse/OfflineObjectStore;->pinName:Ljava/lang/String;

    invoke-static {v0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)La/j;

    move-result-object v0

    new-instance v1, Lcom/parse/OfflineObjectStore$2;

    invoke-direct {v1, p0, p1}, Lcom/parse/OfflineObjectStore$2;-><init>(Lcom/parse/OfflineObjectStore;Lcom/parse/ParseObject;)V

    invoke-virtual {v0, v1}, La/j;->b(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method
