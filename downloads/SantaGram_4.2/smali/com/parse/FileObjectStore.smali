.class Lcom/parse/FileObjectStore;
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

.field private final coder:Lcom/parse/ParseObjectCurrentCoder;

.field private final file:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/io/File;Lcom/parse/ParseObjectCurrentCoder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/io/File;",
            "Lcom/parse/ParseObjectCurrentCoder;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/parse/FileObjectStore;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/parse/ParseObjectSubclassingController;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/parse/FileObjectStore;-><init>(Ljava/lang/String;Ljava/io/File;Lcom/parse/ParseObjectCurrentCoder;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;Lcom/parse/ParseObjectCurrentCoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/parse/FileObjectStore;->className:Ljava/lang/String;

    iput-object p2, p0, Lcom/parse/FileObjectStore;->file:Ljava/io/File;

    iput-object p3, p0, Lcom/parse/FileObjectStore;->coder:Lcom/parse/ParseObjectCurrentCoder;

    return-void
.end method

.method static synthetic access$000(Lcom/parse/FileObjectStore;)Lcom/parse/ParseObjectCurrentCoder;
    .locals 1

    iget-object v0, p0, Lcom/parse/FileObjectStore;->coder:Lcom/parse/ParseObjectCurrentCoder;

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/FileObjectStore;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/parse/FileObjectStore;->file:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParseObjectCurrentCoder;Lcom/parse/ParseObject;Ljava/io/File;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/parse/FileObjectStore;->saveToDisk(Lcom/parse/ParseObjectCurrentCoder;Lcom/parse/ParseObject;Ljava/io/File;)V

    return-void
.end method

.method static synthetic access$300(Lcom/parse/FileObjectStore;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/FileObjectStore;->className:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/ParseObjectCurrentCoder;Ljava/io/File;Lcom/parse/ParseObject$State$Init;)Lcom/parse/ParseObject;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/parse/FileObjectStore;->getFromDisk(Lcom/parse/ParseObjectCurrentCoder;Ljava/io/File;Lcom/parse/ParseObject$State$Init;)Lcom/parse/ParseObject;

    move-result-object v0

    return-object v0
.end method

.method private static getFromDisk(Lcom/parse/ParseObjectCurrentCoder;Ljava/io/File;Lcom/parse/ParseObject$State$Init;)Lcom/parse/ParseObject;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Lcom/parse/ParseObjectCurrentCoder;",
            "Ljava/io/File;",
            "Lcom/parse/ParseObject$State$Init;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/parse/ParseFileUtils;->readFileToJSONObject(Ljava/io/File;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Lcom/parse/ParseObjectCurrentCoder;->decode(Lcom/parse/ParseObject$State$Init;Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parse/ParseObject$State$Init;->isComplete(Z)Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseObject$State$Init;->build()Lcom/parse/ParseObject$State;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseObject;->from(Lcom/parse/ParseObject$State;)Lcom/parse/ParseObject;

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static getSubclassingController()Lcom/parse/ParseObjectSubclassingController;
    .locals 1

    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getSubclassingController()Lcom/parse/ParseObjectSubclassingController;

    move-result-object v0

    return-object v0
.end method

.method private static saveToDisk(Lcom/parse/ParseObjectCurrentCoder;Lcom/parse/ParseObject;Ljava/io/File;)V
    .locals 3

    invoke-virtual {p1}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/parse/PointerEncoder;->get()Lcom/parse/PointerEncoder;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/parse/ParseObjectCurrentCoder;->encode(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    invoke-static {p2, v0}, Lcom/parse/ParseFileUtils;->writeJSONObjectToFile(Ljava/io/File;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public deleteAsync()La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/parse/FileObjectStore$4;

    invoke-direct {v0, p0}, Lcom/parse/FileObjectStore$4;-><init>(Lcom/parse/FileObjectStore;)V

    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, La/j;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)La/j;

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

    new-instance v0, Lcom/parse/FileObjectStore$3;

    invoke-direct {v0, p0}, Lcom/parse/FileObjectStore$3;-><init>(Lcom/parse/FileObjectStore;)V

    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, La/j;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)La/j;

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

    new-instance v0, Lcom/parse/FileObjectStore$2;

    invoke-direct {v0, p0}, Lcom/parse/FileObjectStore$2;-><init>(Lcom/parse/FileObjectStore;)V

    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, La/j;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)La/j;

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

    new-instance v0, Lcom/parse/FileObjectStore$1;

    invoke-direct {v0, p0, p1}, Lcom/parse/FileObjectStore$1;-><init>(Lcom/parse/FileObjectStore;Lcom/parse/ParseObject;)V

    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, La/j;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)La/j;

    move-result-object v0

    return-object v0
.end method
