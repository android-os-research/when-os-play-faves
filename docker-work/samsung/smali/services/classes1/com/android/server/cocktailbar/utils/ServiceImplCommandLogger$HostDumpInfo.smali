.class public Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;
.super Ljava/lang/Object;
.source "ServiceImplCommandLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HostDumpInfo"
.end annotation


# instance fields
.field public mCommandHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mEndTime:Ljava/lang/String;

.field public mStratTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;->mCommandHistory:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/cocktailbar/utils/ServiceImplCommandLogger$HostDumpInfo;-><init>()V

    return-void
.end method
