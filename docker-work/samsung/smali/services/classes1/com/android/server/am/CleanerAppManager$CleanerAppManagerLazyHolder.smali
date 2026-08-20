.class public Lcom/android/server/am/CleanerAppManager$CleanerAppManagerLazyHolder;
.super Ljava/lang/Object;
.source "CleanerAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CleanerAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CleanerAppManagerLazyHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/server/am/CleanerAppManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 89
    new-instance v0, Lcom/android/server/am/CleanerAppManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/CleanerAppManager;-><init>(Lcom/android/server/am/CleanerAppManager-IA;)V

    sput-object v0, Lcom/android/server/am/CleanerAppManager$CleanerAppManagerLazyHolder;->INSTANCE:Lcom/android/server/am/CleanerAppManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
