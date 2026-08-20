.class public Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;
.super Ljava/lang/Object;
.source "ShellRestrictionsHelper.java"


# static fields
.field public static final ROOT_UID:I


# instance fields
.field public final mCmdBlockList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;->mCmdBlockList:Ljava/util/List;

    .line 13
    invoke-virtual {p0}, Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;->buildCmdBlockList()V

    return-void
.end method


# virtual methods
.method public final buildCmdBlockList()V
    .registers 2

    .line 25
    iget-object p0, p0, Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;->mCmdBlockList:Ljava/util/List;

    const-string v0, "com.tmobile.echolocate"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isRestrictedPackage(Ljava/lang/String;)Z
    .registers 4

    .line 17
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    if-eqz v0, :cond_d

    return v1

    .line 21
    :cond_d
    iget-object p0, p0, Lcom/samsung/android/server/pm/cmd/ShellRestrictionsHelper;->mCmdBlockList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
