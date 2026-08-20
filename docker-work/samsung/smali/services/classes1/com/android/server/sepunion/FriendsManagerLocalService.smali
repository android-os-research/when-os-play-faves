.class public Lcom/android/server/sepunion/FriendsManagerLocalService;
.super Lcom/samsung/android/sepunion/FriendsManagerLocal;
.source "FriendsManagerLocalService.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 32
    const-class v0, Lcom/android/server/sepunion/FriendsManagerLocalService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/FriendsManagerLocalService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/sepunion/FriendsManagerLocal;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/server/sepunion/FriendsManagerLocalService;->mContext:Landroid/content/Context;

    .line 39
    invoke-virtual {p0}, Lcom/android/server/sepunion/FriendsManagerLocalService;->initialize()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    if-eqz p4, :cond_11

    const-string v0, "friends"

    .line 56
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_11

    .line 57
    iget-object p0, p0, Lcom/android/server/sepunion/FriendsManagerLocalService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-eqz p0, :cond_11

    .line 58
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3

    .line 48
    iget-object p0, p0, Lcom/android/server/sepunion/FriendsManagerLocalService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 51
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sepunion/friends/FrsServiceImpl;->executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public initialize()V
    .registers 3

    .line 43
    new-instance v0, Lcom/android/server/sepunion/friends/FrsServiceImpl;

    iget-object v1, p0, Lcom/android/server/sepunion/FriendsManagerLocalService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/sepunion/friends/FrsServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sepunion/FriendsManagerLocalService;->mFrsServiceImpl:Lcom/android/server/sepunion/friends/FrsServiceImpl;

    return-void
.end method
