.class final Landroid/support/v4/b/u;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/b/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:Z

.field final d:I

.field final e:I

.field final f:Ljava/lang/String;

.field final g:Z

.field final h:Z

.field final i:Landroid/os/Bundle;

.field j:Landroid/os/Bundle;

.field k:Landroid/support/v4/b/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/b/u$1;

    invoke-direct {v0}, Landroid/support/v4/b/u$1;-><init>()V

    sput-object v0, Landroid/support/v4/b/u;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/b/u;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/b/u;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/b/u;->c:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/b/u;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/b/u;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/b/u;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/support/v4/b/u;->g:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Landroid/support/v4/b/u;->h:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/b/u;->i:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/b/u;->j:Landroid/os/Bundle;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public constructor <init>(Landroid/support/v4/b/m;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/b/u;->a:Ljava/lang/String;

    iget v0, p1, Landroid/support/v4/b/m;->g:I

    iput v0, p0, Landroid/support/v4/b/u;->b:I

    iget-boolean v0, p1, Landroid/support/v4/b/m;->o:Z

    iput-boolean v0, p0, Landroid/support/v4/b/u;->c:Z

    iget v0, p1, Landroid/support/v4/b/m;->w:I

    iput v0, p0, Landroid/support/v4/b/u;->d:I

    iget v0, p1, Landroid/support/v4/b/m;->x:I

    iput v0, p0, Landroid/support/v4/b/u;->e:I

    iget-object v0, p1, Landroid/support/v4/b/m;->y:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/b/u;->f:Ljava/lang/String;

    iget-boolean v0, p1, Landroid/support/v4/b/m;->B:Z

    iput-boolean v0, p0, Landroid/support/v4/b/u;->g:Z

    iget-boolean v0, p1, Landroid/support/v4/b/m;->A:Z

    iput-boolean v0, p0, Landroid/support/v4/b/u;->h:Z

    iget-object v0, p1, Landroid/support/v4/b/m;->i:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/v4/b/u;->i:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/b/q;Landroid/support/v4/b/m;)Landroid/support/v4/b/m;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/b/u;->k:Landroid/support/v4/b/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/b/u;->k:Landroid/support/v4/b/m;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/b/q;->g()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/b/u;->i:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v4/b/u;->i:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_1
    iget-object v1, p0, Landroid/support/v4/b/u;->a:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/b/u;->i:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Landroid/support/v4/b/m;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/b/m;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/b/u;->k:Landroid/support/v4/b/m;

    iget-object v1, p0, Landroid/support/v4/b/u;->j:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/support/v4/b/u;->j:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Landroid/support/v4/b/u;->k:Landroid/support/v4/b/m;

    iget-object v1, p0, Landroid/support/v4/b/u;->j:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/support/v4/b/m;->e:Landroid/os/Bundle;

    :cond_2
    iget-object v0, p0, Landroid/support/v4/b/u;->k:Landroid/support/v4/b/m;

    iget v1, p0, Landroid/support/v4/b/u;->b:I

    invoke-virtual {v0, v1, p2}, Landroid/support/v4/b/m;->a(ILandroid/support/v4/b/m;)V

    iget-object v0, p0, Landroid/support/v4/b/u;->k:Landroid/support/v4/b/m;

    iget-boolean v1, p0, Landroid/support/v4/b/u;->c:Z

    iput-boolean v1, v0, Landroid/support/v4/b/m;->o:Z

    iget-object v0, p0, Landroid/support/v4/b/u;->k:Landroid/support/v4/b/m;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/b/m;->q:Z

    iget-object v0, p0, Landroid/support/v4/b/u;->k:Landroid/support/v4/b/m;

    iget v1, p0, Landroid/support/v4/b/u;->d:I

    iput v1, v0, Landroid/support/v4/b/m;->w:I

    iget-object v0, p0, Landroid/support/v4/b/u;->k:Landroid/support/v4/b/m;

    iget v1, p0, Landroid/support/v4/b/u;->e:I

    iput v1, v0, Landroid/support/v4/b/m;->x:I

    iget-object v0, p0, Landroid/support/v4/b/u;->k:Landroid/support/v4/b/m;

    iget-object v1, p0, Landroid/support/v4/b/u;->f:Ljava/lang/String;

    iput-object v1, v0, Landroid/support/v4/b/m;->y:Ljava/lang/String;

    iget-object v0, p0, Landroid/support/v4/b/u;->k:Landroid/support/v4/b/m;

    iget-boolean v1, p0, Landroid/support/v4/b/u;->g:Z

    iput-boolean v1, v0, Landroid/support/v4/b/m;->B:Z

    iget-object v0, p0, Landroid/support/v4/b/u;->k:Landroid/support/v4/b/m;

    iget-boolean v1, p0, Landroid/support/v4/b/u;->h:Z

    iput-boolean v1, v0, Landroid/support/v4/b/m;->A:Z

    iget-object v0, p0, Landroid/support/v4/b/u;->k:Landroid/support/v4/b/m;

    iget-object v1, p1, Landroid/support/v4/b/q;->d:Landroid/support/v4/b/s;

    iput-object v1, v0, Landroid/support/v4/b/m;->s:Landroid/support/v4/b/s;

    sget-boolean v0, Landroid/support/v4/b/s;->a:Z

    if-eqz v0, :cond_3

    const-string v0, "FragmentManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Instantiated fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/b/u;->k:Landroid/support/v4/b/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Landroid/support/v4/b/u;->k:Landroid/support/v4/b/m;

    goto/16 :goto_0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/b/u;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/support/v4/b/u;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/support/v4/b/u;->c:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/support/v4/b/u;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/support/v4/b/u;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/support/v4/b/u;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean v0, p0, Landroid/support/v4/b/u;->g:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/support/v4/b/u;->h:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/support/v4/b/u;->i:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/b/u;->j:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
