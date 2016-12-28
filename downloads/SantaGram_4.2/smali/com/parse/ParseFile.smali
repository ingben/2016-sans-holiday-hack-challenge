.class public Lcom/parse/ParseFile;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseFile$State;
    }
.end annotation


# instance fields
.field private currentTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "La/k",
            "<*>;>;"
        }
    .end annotation
.end field

.field data:[B

.field file:Ljava/io/File;

.field private state:Lcom/parse/ParseFile$State;

.field final taskQueue:Lcom/parse/TaskQueue;


# direct methods
.method constructor <init>(Lcom/parse/ParseFile$State;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseFile;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    iput-object p1, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$State;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/parse/ParseFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/parse/ParseFile$State$Builder;

    invoke-direct {v0}, Lcom/parse/ParseFile$State$Builder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParseFile$State$Builder;->name(Ljava/lang/String;)Lcom/parse/ParseFile$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/parse/ParseFile$State$Builder;->mimeType(Ljava/lang/String;)Lcom/parse/ParseFile$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseFile$State$Builder;->build()Lcom/parse/ParseFile$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseFile;-><init>(Lcom/parse/ParseFile$State;)V

    iput-object p1, p0, Lcom/parse/ParseFile;->file:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/parse/ParseFile;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/parse/ParseFile$State$Builder;

    invoke-direct {v0}, Lcom/parse/ParseFile$State$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/parse/ParseFile$State$Builder;->name(Ljava/lang/String;)Lcom/parse/ParseFile$State$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/parse/ParseFile$State$Builder;->mimeType(Ljava/lang/String;)Lcom/parse/ParseFile$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseFile$State$Builder;->build()Lcom/parse/ParseFile$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseFile;-><init>(Lcom/parse/ParseFile$State;)V

    iput-object p2, p0, Lcom/parse/ParseFile;->data:[B

    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Lcom/parse/ParseDecoder;)V
    .locals 2

    new-instance v0, Lcom/parse/ParseFile$State$Builder;

    invoke-direct {v0}, Lcom/parse/ParseFile$State$Builder;-><init>()V

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParseFile$State$Builder;->name(Ljava/lang/String;)Lcom/parse/ParseFile$State$Builder;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParseFile$State$Builder;->url(Ljava/lang/String;)Lcom/parse/ParseFile$State$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseFile$State$Builder;->build()Lcom/parse/ParseFile$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseFile;-><init>(Lcom/parse/ParseFile$State;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lcom/parse/ParseFile;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/parse/ParseFile;-><init>(Ljava/lang/String;[BLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/parse/ParseFile;)Lcom/parse/ParseFile$State;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$State;

    return-object v0
.end method

.method static synthetic access$402(Lcom/parse/ParseFile;Lcom/parse/ParseFile$State;)Lcom/parse/ParseFile$State;
    .locals 0

    iput-object p1, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$State;

    return-object p1
.end method

.method static synthetic access$500(Lcom/parse/ProgressCallback;)Lcom/parse/ProgressCallback;
    .locals 1

    invoke-static {p0}, Lcom/parse/ParseFile;->progressCallbackOnMainThread(Lcom/parse/ProgressCallback;)Lcom/parse/ProgressCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/parse/ParseFile;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$700(Lcom/parse/ParseFile;Ljava/lang/String;Lcom/parse/ProgressCallback;La/j;La/j;)La/j;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseFile;->saveAsync(Ljava/lang/String;Lcom/parse/ProgressCallback;La/j;La/j;)La/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;La/j;La/j;)La/j;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/parse/ParseFile;->fetchInBackground(Lcom/parse/ProgressCallback;La/j;La/j;)La/j;

    move-result-object v0

    return-object v0
.end method

.method private fetchInBackground(Lcom/parse/ProgressCallback;La/j;La/j;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "La/j",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p3}, La/j;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, La/j;->i()La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/parse/ParseFile$12;

    invoke-direct {v0, p0, p3, p1}, Lcom/parse/ParseFile$12;-><init>(Lcom/parse/ParseFile;La/j;Lcom/parse/ProgressCallback;)V

    invoke-virtual {p2, v0}, La/j;->b(La/h;)La/j;

    move-result-object v0

    goto :goto_0
.end method

.method static getFileController()Lcom/parse/ParseFileController;
    .locals 1

    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getFileController()Lcom/parse/ParseFileController;

    move-result-object v0

    return-object v0
.end method

.method private static progressCallbackOnMainThread(Lcom/parse/ProgressCallback;)Lcom/parse/ProgressCallback;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/parse/ParseFile$1;

    invoke-direct {v0, p0}, Lcom/parse/ParseFile$1;-><init>(Lcom/parse/ProgressCallback;)V

    goto :goto_0
.end method

.method private saveAsync(Ljava/lang/String;Lcom/parse/ProgressCallback;La/j;La/j;)La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ProgressCallback;",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;",
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

    invoke-virtual {p0}, Lcom/parse/ParseFile;->isDirty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, La/j;->a(Ljava/lang/Object;)La/j;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, La/j;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, La/j;->i()La/j;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/parse/ParseFile$2;

    invoke-direct {v0, p0, p4, p1, p2}, Lcom/parse/ParseFile$2;-><init>(Lcom/parse/ParseFile;La/j;Ljava/lang/String;Lcom/parse/ProgressCallback;)V

    invoke-virtual {p3, v0}, La/j;->b(La/h;)La/j;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/k;

    invoke-virtual {v0}, La/k;->b()Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method encode()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "__type"

    const-string v2, "File"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "name"

    invoke-virtual {p0}, Lcom/parse/ParseFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to encode an unsaved ParseFile."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v1, "url"

    invoke-virtual {p0}, Lcom/parse/ParseFile;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    invoke-virtual {p0}, Lcom/parse/ParseFile;->getDataInBackground()La/j;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(La/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getDataInBackground()La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<[B>;"
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Lcom/parse/ProgressCallback;

    invoke-virtual {p0, v0}, Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/ProgressCallback;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public getDataInBackground(Lcom/parse/ProgressCallback;)La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            ")",
            "La/j",
            "<[B>;"
        }
    .end annotation

    new-instance v0, La/k;

    invoke-direct {v0}, La/k;-><init>()V

    iget-object v1, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/parse/ParseFile;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v2, Lcom/parse/ParseFile$7;

    invoke-direct {v2, p0, p1, v0}, Lcom/parse/ParseFile$7;-><init>(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;La/k;)V

    invoke-virtual {v1, v2}, Lcom/parse/TaskQueue;->enqueue(La/h;)La/j;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseFile$6;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseFile$6;-><init>(Lcom/parse/ParseFile;La/k;)V

    invoke-virtual {v1, v2}, La/j;->b(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public getDataInBackground(Lcom/parse/GetDataCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/parse/ParseFile;->getDataInBackground()La/j;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(La/j;Lcom/parse/ParseCallback2;)La/j;

    return-void
.end method

.method public getDataInBackground(Lcom/parse/GetDataCallback;Lcom/parse/ProgressCallback;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/parse/ParseFile;->getDataInBackground(Lcom/parse/ProgressCallback;)La/j;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(La/j;Lcom/parse/ParseCallback2;)La/j;

    return-void
.end method

.method public getDataStream()Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p0}, Lcom/parse/ParseFile;->getDataStreamInBackground()La/j;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(La/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public getDataStreamInBackground()La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Lcom/parse/ProgressCallback;

    invoke-virtual {p0, v0}, Lcom/parse/ParseFile;->getDataStreamInBackground(Lcom/parse/ProgressCallback;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public getDataStreamInBackground(Lcom/parse/ProgressCallback;)La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            ")",
            "La/j",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    new-instance v0, La/k;

    invoke-direct {v0}, La/k;-><init>()V

    iget-object v1, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/parse/ParseFile;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v2, Lcom/parse/ParseFile$11;

    invoke-direct {v2, p0, p1, v0}, Lcom/parse/ParseFile$11;-><init>(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;La/k;)V

    invoke-virtual {v1, v2}, Lcom/parse/TaskQueue;->enqueue(La/h;)La/j;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseFile$10;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseFile$10;-><init>(Lcom/parse/ParseFile;La/k;)V

    invoke-virtual {v1, v2}, La/j;->b(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public getDataStreamInBackground(Lcom/parse/GetDataStreamCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/parse/ParseFile;->getDataStreamInBackground()La/j;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(La/j;Lcom/parse/ParseCallback2;)La/j;

    return-void
.end method

.method public getDataStreamInBackground(Lcom/parse/GetDataStreamCallback;Lcom/parse/ProgressCallback;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/parse/ParseFile;->getDataStreamInBackground(Lcom/parse/ProgressCallback;)La/j;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(La/j;Lcom/parse/ParseCallback2;)La/j;

    return-void
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    invoke-virtual {p0}, Lcom/parse/ParseFile;->getFileInBackground()La/j;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(La/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public getFileInBackground()La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Lcom/parse/ProgressCallback;

    invoke-virtual {p0, v0}, Lcom/parse/ParseFile;->getFileInBackground(Lcom/parse/ProgressCallback;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public getFileInBackground(Lcom/parse/ProgressCallback;)La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            ")",
            "La/j",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, La/k;

    invoke-direct {v0}, La/k;-><init>()V

    iget-object v1, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/parse/ParseFile;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v2, Lcom/parse/ParseFile$9;

    invoke-direct {v2, p0, p1, v0}, Lcom/parse/ParseFile$9;-><init>(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;La/k;)V

    invoke-virtual {v1, v2}, Lcom/parse/TaskQueue;->enqueue(La/h;)La/j;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseFile$8;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseFile$8;-><init>(Lcom/parse/ParseFile;La/k;)V

    invoke-virtual {v1, v2}, La/j;->b(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public getFileInBackground(Lcom/parse/GetFileCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/parse/ParseFile;->getFileInBackground()La/j;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(La/j;Lcom/parse/ParseCallback2;)La/j;

    return-void
.end method

.method public getFileInBackground(Lcom/parse/GetFileCallback;Lcom/parse/ProgressCallback;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/parse/ParseFile;->getFileInBackground(Lcom/parse/ProgressCallback;)La/j;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(La/j;Lcom/parse/ParseCallback2;)La/j;

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$State;

    invoke-virtual {v0}, Lcom/parse/ParseFile$State;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getState()Lcom/parse/ParseFile$State;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$State;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$State;

    invoke-virtual {v0}, Lcom/parse/ParseFile$State;->url()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDataAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/parse/ParseFile;->data:[B

    if-nez v0, :cond_0

    invoke-static {}, Lcom/parse/ParseFile;->getFileController()Lcom/parse/ParseFileController;

    move-result-object v0

    iget-object v1, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$State;

    invoke-virtual {v0, v1}, Lcom/parse/ParseFileController;->isDataAvailable(Lcom/parse/ParseFile$State;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 1

    iget-object v0, p0, Lcom/parse/ParseFile;->state:Lcom/parse/ParseFile$State;

    invoke-virtual {v0}, Lcom/parse/ParseFile$State;->url()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public save()V
    .locals 1

    invoke-virtual {p0}, Lcom/parse/ParseFile;->saveInBackground()La/j;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(La/j;)Ljava/lang/Object;

    return-void
.end method

.method saveAsync(Ljava/lang/String;Lcom/parse/ProgressCallback;La/j;)La/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ProgressCallback;",
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

    iget-object v0, p0, Lcom/parse/ParseFile;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseFile$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/parse/ParseFile$5;-><init>(Lcom/parse/ParseFile;Ljava/lang/String;Lcom/parse/ProgressCallback;La/j;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public saveInBackground()La/j;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    check-cast v0, Lcom/parse/ProgressCallback;

    invoke-virtual {p0, v0}, Lcom/parse/ParseFile;->saveInBackground(Lcom/parse/ProgressCallback;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public saveInBackground(Lcom/parse/ProgressCallback;)La/j;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            ")",
            "La/j",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, La/k;

    invoke-direct {v0}, La/k;-><init>()V

    iget-object v1, p0, Lcom/parse/ParseFile;->currentTasks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()La/j;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseFile$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/parse/ParseFile$4;-><init>(Lcom/parse/ParseFile;Lcom/parse/ProgressCallback;La/k;)V

    invoke-virtual {v1, v2}, La/j;->d(La/h;)La/j;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseFile$3;

    invoke-direct {v2, p0, v0}, Lcom/parse/ParseFile$3;-><init>(Lcom/parse/ParseFile;La/k;)V

    invoke-virtual {v1, v2}, La/j;->b(La/h;)La/j;

    move-result-object v0

    return-object v0
.end method

.method public saveInBackground(Lcom/parse/SaveCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/parse/ParseFile;->saveInBackground()La/j;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(La/j;Lcom/parse/ParseCallback1;)La/j;

    return-void
.end method

.method public saveInBackground(Lcom/parse/SaveCallback;Lcom/parse/ProgressCallback;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/parse/ParseFile;->saveInBackground(Lcom/parse/ProgressCallback;)La/j;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(La/j;Lcom/parse/ParseCallback1;)La/j;

    return-void
.end method
