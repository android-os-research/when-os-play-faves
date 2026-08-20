.class public Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;
.super Ljava/lang/Object;
.source "EnterprisePartitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/EnterprisePartitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Injector"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public binderClearCallingIdentity()J
    .registers 3

    .line 169
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    return-wide v0
.end method

.method public binderRestoreCallingIdentity(J)V
    .registers 3

    .line 173
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 1

    .line 165
    iget-object p0, p0, Lcom/android/server/knox/dar/EnterprisePartitionManager$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method
