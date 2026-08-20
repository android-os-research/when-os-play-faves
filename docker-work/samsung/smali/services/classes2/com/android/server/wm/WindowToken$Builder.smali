.class public Lcom/android/server/wm/WindowToken$Builder;
.super Ljava/lang/Object;
.source "WindowToken.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mFromClientToken:Z

.field public mOptions:Landroid/os/Bundle;

.field public mOwnerCanManageAppTokens:Z

.field public mPersistOnEmpty:Z

.field public mRoundedCornerOverlay:Z

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mToken:Landroid/os/IBinder;

.field public final mType:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;I)V
    .registers 4

    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 856
    iput-object p1, p0, Lcom/android/server/wm/WindowToken$Builder;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 857
    iput-object p2, p0, Lcom/android/server/wm/WindowToken$Builder;->mToken:Landroid/os/IBinder;

    .line 858
    iput p3, p0, Lcom/android/server/wm/WindowToken$Builder;->mType:I

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/wm/WindowToken;
    .registers 12

    .line 898
    new-instance v10, Lcom/android/server/wm/WindowToken;

    iget-object v1, p0, Lcom/android/server/wm/WindowToken$Builder;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p0, Lcom/android/server/wm/WindowToken$Builder;->mToken:Landroid/os/IBinder;

    iget v3, p0, Lcom/android/server/wm/WindowToken$Builder;->mType:I

    iget-boolean v4, p0, Lcom/android/server/wm/WindowToken$Builder;->mPersistOnEmpty:Z

    iget-object v5, p0, Lcom/android/server/wm/WindowToken$Builder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v6, p0, Lcom/android/server/wm/WindowToken$Builder;->mOwnerCanManageAppTokens:Z

    iget-boolean v7, p0, Lcom/android/server/wm/WindowToken$Builder;->mRoundedCornerOverlay:Z

    iget-boolean v8, p0, Lcom/android/server/wm/WindowToken$Builder;->mFromClientToken:Z

    iget-object v9, p0, Lcom/android/server/wm/WindowToken$Builder;->mOptions:Landroid/os/Bundle;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/WindowToken;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/IBinder;IZLcom/android/server/wm/DisplayContent;ZZZLandroid/os/Bundle;)V

    return-object v10
.end method

.method public setDisplayContent(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/WindowToken$Builder;
    .registers 2

    .line 869
    iput-object p1, p0, Lcom/android/server/wm/WindowToken$Builder;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-object p0
.end method

.method public setFromClientToken(Z)Lcom/android/server/wm/WindowToken$Builder;
    .registers 2

    .line 887
    iput-boolean p1, p0, Lcom/android/server/wm/WindowToken$Builder;->mFromClientToken:Z

    return-object p0
.end method

.method public setOptions(Landroid/os/Bundle;)Lcom/android/server/wm/WindowToken$Builder;
    .registers 2

    .line 893
    iput-object p1, p0, Lcom/android/server/wm/WindowToken$Builder;->mOptions:Landroid/os/Bundle;

    return-object p0
.end method

.method public setOwnerCanManageAppTokens(Z)Lcom/android/server/wm/WindowToken$Builder;
    .registers 2

    .line 875
    iput-boolean p1, p0, Lcom/android/server/wm/WindowToken$Builder;->mOwnerCanManageAppTokens:Z

    return-object p0
.end method

.method public setPersistOnEmpty(Z)Lcom/android/server/wm/WindowToken$Builder;
    .registers 2

    .line 863
    iput-boolean p1, p0, Lcom/android/server/wm/WindowToken$Builder;->mPersistOnEmpty:Z

    return-object p0
.end method

.method public setRoundedCornerOverlay(Z)Lcom/android/server/wm/WindowToken$Builder;
    .registers 2

    .line 881
    iput-boolean p1, p0, Lcom/android/server/wm/WindowToken$Builder;->mRoundedCornerOverlay:Z

    return-object p0
.end method
