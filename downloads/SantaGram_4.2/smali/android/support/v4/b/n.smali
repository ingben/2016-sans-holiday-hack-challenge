.class public Landroid/support/v4/b/n;
.super Landroid/support/v4/b/l;

# interfaces
.implements Landroid/support/v4/b/a$a;
.implements Landroid/support/v4/b/c$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/b/n$a;,
        Landroid/support/v4/b/n$b;
    }
.end annotation


# static fields
.field static final ALLOCATED_REQUEST_INDICIES_TAG:Ljava/lang/String; = "android:support:request_indicies"

.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field private static final HONEYCOMB:I = 0xb

.field static final MAX_NUM_PENDING_FRAGMENT_ACTIVITY_RESULTS:I = 0xfffe

.field static final MSG_REALLY_STOPPED:I = 0x1

.field static final MSG_RESUME_PENDING:I = 0x2

.field static final NEXT_CANDIDATE_REQUEST_INDEX_TAG:Ljava/lang/String; = "android:support:next_request_index"

.field static final REQUEST_FRAGMENT_WHO_TAG:Ljava/lang/String; = "android:support:request_fragment_who"

.field private static final TAG:Ljava/lang/String; = "FragmentActivity"


# instance fields
.field mCreated:Z

.field final mFragments:Landroid/support/v4/b/p;

.field final mHandler:Landroid/os/Handler;

.field mMediaController:Landroid/support/v4/f/a/a;

.field mNextCandidateRequestIndex:I

.field mOptionsMenuInvalidated:Z

.field mPendingFragmentActivityResults:Landroid/support/v4/i/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/i/j",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mReallyStopped:Z

.field mRequestedPermissionsFromFragment:Z

.field mResumed:Z

.field mRetaining:Z

.field mStartedActivityFromFragment:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/b/l;-><init>()V

    new-instance v0, Landroid/support/v4/b/n$1;

    invoke-direct {v0, p0}, Landroid/support/v4/b/n$1;-><init>(Landroid/support/v4/b/n;)V

    iput-object v0, p0, Landroid/support/v4/b/n;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/support/v4/b/n$a;

    invoke-direct {v0, p0}, Landroid/support/v4/b/n$a;-><init>(Landroid/support/v4/b/n;)V

    invoke-static {v0}, Landroid/support/v4/b/p;->a(Landroid/support/v4/b/q;)Landroid/support/v4/b/p;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/b/n;Landroid/support/v4/b/m;[Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/b/n;->requestPermissionsFromFragment(Landroid/support/v4/b/m;[Ljava/lang/String;I)V

    return-void
.end method

.method private allocateRequestIndex(Landroid/support/v4/b/m;)I
    .locals 4

    const v3, 0xfffe

    iget-object v0, p0, Landroid/support/v4/b/n;->mPendingFragmentActivityResults:Landroid/support/v4/i/j;

    invoke-virtual {v0}, Landroid/support/v4/i/j;->b()I

    move-result v0

    if-lt v0, v3, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too many pending Fragment activity results."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/b/n;->mPendingFragmentActivityResults:Landroid/support/v4/i/j;

    iget v1, p0, Landroid/support/v4/b/n;->mNextCandidateRequestIndex:I

    invoke-virtual {v0, v1}, Landroid/support/v4/i/j;->f(I)I

    move-result v0

    if-ltz v0, :cond_1

    iget v0, p0, Landroid/support/v4/b/n;->mNextCandidateRequestIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/2addr v0, v3

    iput v0, p0, Landroid/support/v4/b/n;->mNextCandidateRequestIndex:I

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/support/v4/b/n;->mNextCandidateRequestIndex:I

    iget-object v1, p0, Landroid/support/v4/b/n;->mPendingFragmentActivityResults:Landroid/support/v4/i/j;

    iget-object v2, p1, Landroid/support/v4/b/m;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/i/j;->b(ILjava/lang/Object;)V

    iget v1, p0, Landroid/support/v4/b/n;->mNextCandidateRequestIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/2addr v1, v3

    iput v1, p0, Landroid/support/v4/b/n;->mNextCandidateRequestIndex:I

    return v0
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 4

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p3, :cond_1

    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    invoke-static {p3}, Landroid/support/v4/b/n;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    instance-of v0, p3, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p3, Landroid/view/ViewGroup;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v2, p2, v3}, Landroid/support/v4/b/n;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private requestPermissionsFromFragment(Landroid/support/v4/b/m;[Ljava/lang/String;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    invoke-static {p0, p2, p3}, Landroid/support/v4/b/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const/high16 v0, -0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/support/v4/b/n;->mRequestedPermissionsFromFragment:Z

    invoke-direct {p0, p1}, Landroid/support/v4/b/n;->allocateRequestIndex(Landroid/support/v4/b/m;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-static {p0, p2, v0}, Landroid/support/v4/b/a;->a(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Landroid/support/v4/b/n;->mRequestedPermissionsFromFragment:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Landroid/support/v4/b/n;->mRequestedPermissionsFromFragment:Z

    throw v0
.end method

.method private static viewToString(Landroid/view/View;)Ljava/lang/String;
    .locals 7

    const/16 v3, 0x56

    const/16 v1, 0x46

    const/16 v6, 0x2c

    const/16 v5, 0x20

    const/16 v2, 0x2e

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x7b

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x45

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->willNotDraw()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x48

    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    :goto_5
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x43

    :goto_6
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x4c

    :goto_7
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x53

    :goto_9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v2, 0x50

    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_1

    const-string v0, " #"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const/high16 v0, -0x1000000

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_1

    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v0

    :goto_a
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_b
    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :sswitch_1
    const/16 v0, 0x49

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :sswitch_2
    const/16 v0, 0x47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto/16 :goto_1

    :cond_3
    move v0, v2

    goto/16 :goto_2

    :cond_4
    const/16 v0, 0x44

    goto/16 :goto_3

    :cond_5
    move v0, v2

    goto/16 :goto_4

    :cond_6
    move v0, v2

    goto/16 :goto_5

    :cond_7
    move v0, v2

    goto/16 :goto_6

    :cond_8
    move v0, v2

    goto/16 :goto_7

    :cond_9
    move v1, v2

    goto/16 :goto_8

    :cond_a
    move v0, v2

    goto/16 :goto_9

    :sswitch_3
    :try_start_1
    const-string v0, "app"

    goto :goto_a

    :sswitch_4
    const-string v0, "android"
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_b

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x1000000 -> :sswitch_4
        0x7f000000 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/b/p;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method doReallyStop(Z)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/support/v4/b/n;->mReallyStopped:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/support/v4/b/n;->mReallyStopped:Z

    iput-boolean p1, p0, Landroid/support/v4/b/n;->mRetaining:Z

    iget-object v0, p0, Landroid/support/v4/b/n;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/b/n;->onReallyStop()V

    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Local FragmentActivity "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " State:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mCreated="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/b/n;->mCreated:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, "mResumed="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/b/n;->mResumed:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/b/n;->mStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " mReallyStopped="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/support/v4/b/n;->mReallyStopped:Z

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v1, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v1, v0, p2, p3, p4}, Landroid/support/v4/b/p;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->a()Landroid/support/v4/b/r;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/b/r;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "View Hierarchy:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/b/n;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, p3, v1}, Landroid/support/v4/b/n;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    return-void
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/b/n;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/b/n$b;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/support/v4/b/n$b;->a:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportFragmentManager()Landroid/support/v4/b/r;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->a()Landroid/support/v4/b/r;

    move-result-object v0

    return-object v0
.end method

.method public getSupportLoaderManager()Landroid/support/v4/b/x;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->b()Landroid/support/v4/b/x;

    move-result-object v0

    return-object v0
.end method

.method public final getSupportMediaController()Landroid/support/v4/f/a/a;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/n;->mMediaController:Landroid/support/v4/f/a/a;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->c()V

    shr-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Landroid/support/v4/b/n;->mPendingFragmentActivityResults:Landroid/support/v4/i/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/i/j;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/b/n;->mPendingFragmentActivityResults:Landroid/support/v4/i/j;

    invoke-virtual {v2, v1}, Landroid/support/v4/i/j;->c(I)V

    if-nez v0, :cond_0

    const-string v0, "FragmentActivity"

    const-string v1, "Activity result delivered for unknown Fragment."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v1, v0}, Landroid/support/v4/b/p;->a(Ljava/lang/String;)Landroid/support/v4/b/m;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "FragmentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity result no fragment exists for who: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const v0, 0xffff

    and-int/2addr v0, p1

    invoke-virtual {v1, v0, p2, p3}, Landroid/support/v4/b/m;->a(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/b/l;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/support/v4/b/m;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->a()Landroid/support/v4/b/r;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/b/r;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/b/n;->onBackPressedNotHandled()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/b/l;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0, p1}, Landroid/support/v4/b/p;->a(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0, v1}, Landroid/support/v4/b/p;->a(Landroid/support/v4/b/m;)V

    invoke-super {p0, p1}, Landroid/support/v4/b/l;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/support/v4/b/n;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/b/n$b;

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    iget-object v4, v0, Landroid/support/v4/b/n$b;->c:Landroid/support/v4/i/i;

    invoke-virtual {v3, v4}, Landroid/support/v4/b/p;->a(Landroid/support/v4/i/i;)V

    :cond_0
    if-eqz p1, :cond_2

    const-string v3, "android:support:fragments"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    if-eqz v0, :cond_4

    iget-object v0, v0, Landroid/support/v4/b/n$b;->b:Ljava/util/List;

    :goto_0
    invoke-virtual {v4, v3, v0}, Landroid/support/v4/b/p;->a(Landroid/os/Parcelable;Ljava/util/List;)V

    const-string v0, "android:support:next_request_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "android:support:next_request_index"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/support/v4/b/n;->mNextCandidateRequestIndex:I

    const-string v0, "android:support:request_indicies"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    const-string v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    array-length v0, v1

    array-length v4, v3

    if-eq v0, v4, :cond_5

    :cond_1
    const-string v0, "FragmentActivity"

    const-string v1, "Invalid requestCode mapping in savedInstanceState."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Landroid/support/v4/b/n;->mPendingFragmentActivityResults:Landroid/support/v4/i/j;

    if-nez v0, :cond_3

    new-instance v0, Landroid/support/v4/i/j;

    invoke-direct {v0}, Landroid/support/v4/i/j;-><init>()V

    iput-object v0, p0, Landroid/support/v4/b/n;->mPendingFragmentActivityResults:Landroid/support/v4/i/j;

    iput v2, p0, Landroid/support/v4/b/n;->mNextCandidateRequestIndex:I

    :cond_3
    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->f()V

    return-void

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/support/v4/i/j;

    array-length v4, v1

    invoke-direct {v0, v4}, Landroid/support/v4/i/j;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/b/n;->mPendingFragmentActivityResults:Landroid/support/v4/i/j;

    move v0, v2

    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Landroid/support/v4/b/n;->mPendingFragmentActivityResults:Landroid/support/v4/i/j;

    aget v5, v1, v0

    aget-object v6, v3, v0

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/i/j;->b(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 3

    if-nez p1, :cond_1

    invoke-super {p0, p1, p2}, Landroid/support/v4/b/l;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {p0}, Landroid/support/v4/b/n;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/support/v4/b/p;->a(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v1

    or-int/2addr v0, v1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v4/b/l;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/b/l;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/b/l;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/b/l;->onDestroy()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/b/n;->doReallyStop(Z)V

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->m()V

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->q()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v4/b/n;->onBackPressed()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/b/l;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/b/l;->onLowMemory()V

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->n()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v4/b/l;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0, p2}, Landroid/support/v4/b/p;->a(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0, p2}, Landroid/support/v4/b/p;->b(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/b/l;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->c()V

    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/b/l;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0, p2}, Landroid/support/v4/b/p;->b(Landroid/view/Menu;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    const/4 v1, 0x2

    invoke-super {p0}, Landroid/support/v4/b/l;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/b/n;->mResumed:Z

    iget-object v0, p0, Landroid/support/v4/b/n;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/b/n;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/b/n;->onResumeFragments()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->j()V

    return-void
.end method

.method protected onPostResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/b/l;->onPostResume()V

    iget-object v0, p0, Landroid/support/v4/b/n;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0}, Landroid/support/v4/b/n;->onResumeFragments()V

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->o()Z

    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0, p1, p2}, Landroid/support/v4/b/l;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 2

    if-nez p1, :cond_1

    if-eqz p3, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/b/n;->mOptionsMenuInvalidated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/b/n;->mOptionsMenuInvalidated:Z

    invoke-interface {p3}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0, p1, p3}, Landroid/support/v4/b/n;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    :cond_0
    invoke-virtual {p0, p2, p3}, Landroid/support/v4/b/n;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v1, p3}, Landroid/support/v4/b/p;->a(Landroid/view/Menu;)Z

    move-result v1

    or-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/b/l;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method onReallyStop()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    iget-boolean v1, p0, Landroid/support/v4/b/n;->mRetaining:Z

    invoke-virtual {v0, v1}, Landroid/support/v4/b/p;->a(Z)V

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->l()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const v3, 0xffff

    shr-int/lit8 v0, p1, 0x10

    and-int/2addr v0, v3

    if-eqz v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    iget-object v0, p0, Landroid/support/v4/b/n;->mPendingFragmentActivityResults:Landroid/support/v4/i/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/i/j;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/b/n;->mPendingFragmentActivityResults:Landroid/support/v4/i/j;

    invoke-virtual {v2, v1}, Landroid/support/v4/i/j;->c(I)V

    if-nez v0, :cond_1

    const-string v0, "FragmentActivity"

    const-string v1, "Activity result delivered for unknown Fragment."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v1, v0}, Landroid/support/v4/b/p;->a(Ljava/lang/String;)Landroid/support/v4/b/m;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, "FragmentActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity result no fragment exists for who: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    and-int v0, p1, v3

    invoke-virtual {v1, v0, p2, p3}, Landroid/support/v4/b/m;->a(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/b/l;->onResume()V

    iget-object v0, p0, Landroid/support/v4/b/n;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/b/n;->mResumed:Z

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->o()Z

    return-void
.end method

.method protected onResumeFragments()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->i()V

    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 4

    iget-boolean v0, p0, Landroid/support/v4/b/n;->mStopped:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/b/n;->doReallyStop(Z)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/b/n;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->e()Ljava/util/List;

    move-result-object v2

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->s()Landroid/support/v4/i/i;

    move-result-object v3

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/support/v4/b/n$b;

    invoke-direct {v0}, Landroid/support/v4/b/n$b;-><init>()V

    iput-object v1, v0, Landroid/support/v4/b/n$b;->a:Ljava/lang/Object;

    iput-object v2, v0, Landroid/support/v4/b/n$b;->b:Ljava/util/List;

    iput-object v3, v0, Landroid/support/v4/b/n$b;->c:Landroid/support/v4/i/i;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v4/b/l;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->d()Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:support:fragments"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/b/n;->mPendingFragmentActivityResults:Landroid/support/v4/i/j;

    invoke-virtual {v0}, Landroid/support/v4/i/j;->b()I

    move-result v0

    if-lez v0, :cond_2

    const-string v0, "android:support:next_request_index"

    iget v1, p0, Landroid/support/v4/b/n;->mNextCandidateRequestIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/support/v4/b/n;->mPendingFragmentActivityResults:Landroid/support/v4/i/j;

    invoke-virtual {v0}, Landroid/support/v4/i/j;->b()I

    move-result v0

    new-array v2, v0, [I

    iget-object v0, p0, Landroid/support/v4/b/n;->mPendingFragmentActivityResults:Landroid/support/v4/i/j;

    invoke-virtual {v0}, Landroid/support/v4/i/j;->b()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Landroid/support/v4/b/n;->mPendingFragmentActivityResults:Landroid/support/v4/i/j;

    invoke-virtual {v0}, Landroid/support/v4/i/j;->b()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/b/n;->mPendingFragmentActivityResults:Landroid/support/v4/i/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/i/j;->d(I)I

    move-result v0

    aput v0, v2, v1

    iget-object v0, p0, Landroid/support/v4/b/n;->mPendingFragmentActivityResults:Landroid/support/v4/i/j;

    invoke-virtual {v0, v1}, Landroid/support/v4/i/j;->e(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "android:support:request_indicies"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const-string v0, "android:support:request_fragment_who"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected onStart()V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/support/v4/b/l;->onStart()V

    iput-boolean v0, p0, Landroid/support/v4/b/n;->mStopped:Z

    iput-boolean v0, p0, Landroid/support/v4/b/n;->mReallyStopped:Z

    iget-object v0, p0, Landroid/support/v4/b/n;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-boolean v0, p0, Landroid/support/v4/b/n;->mCreated:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/support/v4/b/n;->mCreated:Z

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->g()V

    :cond_0
    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->c()V

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->o()Z

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->p()V

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->h()V

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->r()V

    return-void
.end method

.method public onStateNotSaved()V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->c()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0}, Landroid/support/v4/b/l;->onStop()V

    iput-boolean v1, p0, Landroid/support/v4/b/n;->mStopped:Z

    iget-object v0, p0, Landroid/support/v4/b/n;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Landroid/support/v4/b/n;->mFragments:Landroid/support/v4/b/p;

    invoke-virtual {v0}, Landroid/support/v4/b/p;->k()V

    return-void
.end method

.method public setEnterSharedElementCallback(Landroid/support/v4/b/ac;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/b/a;->a(Landroid/app/Activity;Landroid/support/v4/b/ac;)V

    return-void
.end method

.method public setExitSharedElementCallback(Landroid/support/v4/b/ac;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/support/v4/b/a;->b(Landroid/app/Activity;Landroid/support/v4/b/ac;)V

    return-void
.end method

.method public final setSupportMediaController(Landroid/support/v4/f/a/a;)V
    .locals 2

    iput-object p1, p0, Landroid/support/v4/b/n;->mMediaController:Landroid/support/v4/f/a/a;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/support/v4/f/a/a;->a()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/b/b;->a(Landroid/app/Activity;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/b/n;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    const/high16 v0, -0x10000

    and-int/2addr v0, p2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/b/l;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/b/m;Landroid/content/Intent;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/b/n;->startActivityFromFragment(Landroid/support/v4/b/m;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/b/m;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 3

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/b/n;->mStartedActivityFromFragment:Z

    if-ne p3, v1, :cond_0

    const/4 v0, -0x1

    :try_start_0
    invoke-static {p0, p2, v0, p4}, Landroid/support/v4/b/a;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v2, p0, Landroid/support/v4/b/n;->mStartedActivityFromFragment:Z

    :goto_0
    return-void

    :cond_0
    const/high16 v0, -0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iput-boolean v2, p0, Landroid/support/v4/b/n;->mStartedActivityFromFragment:Z

    throw v0

    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Landroid/support/v4/b/n;->allocateRequestIndex(Landroid/support/v4/b/m;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v1, p3

    add-int/2addr v0, v1

    invoke-static {p0, p2, v0, p4}, Landroid/support/v4/b/a;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iput-boolean v2, p0, Landroid/support/v4/b/n;->mStartedActivityFromFragment:Z

    goto :goto_0
.end method

.method public supportFinishAfterTransition()V
    .locals 0

    invoke-static {p0}, Landroid/support/v4/b/a;->b(Landroid/app/Activity;)V

    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Landroid/support/v4/b/d;->a(Landroid/app/Activity;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/b/n;->mOptionsMenuInvalidated:Z

    goto :goto_0
.end method

.method public supportPostponeEnterTransition()V
    .locals 0

    invoke-static {p0}, Landroid/support/v4/b/a;->c(Landroid/app/Activity;)V

    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 0

    invoke-static {p0}, Landroid/support/v4/b/a;->d(Landroid/app/Activity;)V

    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/v4/b/n;->mRequestedPermissionsFromFragment:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/high16 v0, -0x10000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 16 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method
