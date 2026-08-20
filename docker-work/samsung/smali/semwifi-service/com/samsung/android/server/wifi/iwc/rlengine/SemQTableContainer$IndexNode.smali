.class public Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;
.super Ljava/lang/Object;
.source "SemQTableContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IndexNode"
.end annotation


# instance fields
.field public bssid:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 817
    iput-object p1, p0, Lcom/samsung/android/server/wifi/iwc/rlengine/SemQTableContainer$IndexNode;->bssid:Ljava/lang/String;

    return-void
.end method
