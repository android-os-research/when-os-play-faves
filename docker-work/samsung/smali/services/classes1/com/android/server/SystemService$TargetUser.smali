.class public final Lcom/android/server/SystemService$TargetUser;
.super Ljava/lang/Object;
.source "SystemService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TargetUser"
.end annotation


# instance fields
.field public final mFull:Z

.field public final mManagedProfile:Z

.field public final mPreCreated:Z

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/pm/UserInfo;)V
    .registers 3

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iget v0, p1, Landroid/content/pm/UserInfo;->id:I

    iput v0, p0, Lcom/android/server/SystemService$TargetUser;->mUserId:I

    .line 155
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemService$TargetUser;->mFull:Z

    .line 156
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemService$TargetUser;->mManagedProfile:Z

    .line 157
    iget-boolean p1, p1, Landroid/content/pm/UserInfo;->preCreated:Z

    iput-boolean p1, p0, Lcom/android/server/SystemService$TargetUser;->mPreCreated:Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 3

    .line 213
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 215
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->isFull()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/16 v0, 0x28

    .line 217
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 219
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->isFull()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "full"

    .line 220
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/SystemService$TargetUser;->isManagedProfile()Z

    move-result p0

    if-eqz p0, :cond_30

    const-string/jumbo p0, "mp"

    .line 224
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_30
    const/16 p0, 0x29

    .line 226
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(C)V

    return-void
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .registers 1

    .line 192
    iget p0, p0, Lcom/android/server/SystemService$TargetUser;->mUserId:I

    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public getUserIdentifier()I
    .registers 1

    .line 201
    iget p0, p0, Lcom/android/server/SystemService$TargetUser;->mUserId:I

    return p0
.end method

.method public isFull()Z
    .registers 1

    .line 166
    iget-boolean p0, p0, Lcom/android/server/SystemService$TargetUser;->mFull:Z

    return p0
.end method

.method public isManagedProfile()Z
    .registers 1

    .line 175
    iget-boolean p0, p0, Lcom/android/server/SystemService$TargetUser;->mManagedProfile:Z

    return p0
.end method

.method public isPreCreated()Z
    .registers 1

    .line 184
    iget-boolean p0, p0, Lcom/android/server/SystemService$TargetUser;->mPreCreated:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    .line 206
    iget p0, p0, Lcom/android/server/SystemService$TargetUser;->mUserId:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
