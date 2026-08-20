.class public final synthetic Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/slice/SliceManagerService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/slice/SliceManagerService;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/slice/SliceManagerService;

    iput-object p2, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/slice/SliceManagerService;

    iget-object v1, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda2;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/slice/SliceManagerService;->$r8$lambda$70hZecvOQgg2dMaz_Didfxa8FUE(Lcom/android/server/slice/SliceManagerService;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
