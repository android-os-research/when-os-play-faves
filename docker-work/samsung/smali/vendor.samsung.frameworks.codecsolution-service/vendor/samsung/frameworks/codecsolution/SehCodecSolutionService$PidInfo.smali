.class public Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;
.super Ljava/lang/Object;
.source "SehCodecSolutionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PidInfo"
.end annotation


# instance fields
.field public date:Ljava/util/Date;

.field public packageName:Ljava/lang/String;

.field public pid:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->date:Ljava/util/Date;

    .line 92
    const/4 v1, 0x0

    iput v1, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->pid:I

    .line 93
    iput-object v0, p0, Lvendor/samsung/frameworks/codecsolution/SehCodecSolutionService$PidInfo;->packageName:Ljava/lang/String;

    .line 94
    return-void
.end method
