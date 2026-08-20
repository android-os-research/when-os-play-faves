.class public Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;
.super Landroid/net/ITetheringStatsProvider$Stub;
.source "NetworkManagementService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NetdTetheringStatsProvider"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method public constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .registers 2

    .line 1588
    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Landroid/net/ITetheringStatsProvider$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdTetheringStatsProvider;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public getTetherStats(I)Landroid/net/NetworkStats;
    .registers 2

    .line 1593
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setInterfaceQuota(Ljava/lang/String;J)V
    .registers 4

    return-void
.end method
