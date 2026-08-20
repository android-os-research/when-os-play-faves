.class public Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$1;
.super Landroid/util/LruCache;
.source "ServiceImplCommandLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;I)V
    .registers 3

    .line 19
    iput-object p1, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$1;->this$0:Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 19
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$1;->sizeOf(Ljava/lang/String;Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;)I

    move-result p0

    return p0
.end method

.method public sizeOf(Ljava/lang/String;Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;)I
    .registers 3

    const/4 p0, 0x1

    return p0
.end method
