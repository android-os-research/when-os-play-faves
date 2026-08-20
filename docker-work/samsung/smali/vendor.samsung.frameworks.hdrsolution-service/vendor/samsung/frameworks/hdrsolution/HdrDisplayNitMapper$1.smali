.class Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;
.super Ljava/lang/Object;
.source "HdrDisplayNitMapper.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;


# direct methods
.method constructor <init>(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)V
    .registers 2
    .param p1, "this$0"    # Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    .line 281
    iput-object p1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(F)V
    .registers 10
    .param p1, "brightness"    # F

    .line 284
    iget-object v0, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v0}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmSupportRealTimePanelNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 285
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v0

    .line 286
    .local v0, "platformBrightness":I
    iget-object v1, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v1}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmPanelNitsArray(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)[F

    move-result-object v1

    array-length v1, v1

    .line 287
    .local v1, "arrLen":I
    move v2, v0

    .line 289
    .local v2, "actualBrightness":I
    const/4 v3, 0x0

    add-int/lit8 v4, v1, -0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 290
    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v3}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmPanelNitsArray(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)[F

    move-result-object v4

    aget v4, v4, v2

    invoke-static {v3, v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fputmPanelNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;F)V

    .line 291
    iget-object v3, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v3}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$mupdateTargetNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)V

    .line 292
    const-string v3, "("

    const-string v4, "Panel BRT : "

    const-string v5, "HdrSolution_HdrDisplayNitMapper"

    if-ne v2, v0, :cond_7b

    .line 293
    iget-object v6, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v6}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmPanelNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "hdr.panel_nit"

    invoke-static {v7, v6}, Landroid/os/SemSystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    iget-object v6, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v6}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmLogLevel(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)I

    move-result v6

    if-lez v6, :cond_ad

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmPanelNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "nit)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    .line 296
    :cond_7b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper$1;->this$0:Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;

    invoke-static {v4}, Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;->-$$Nest$fgetmPanelNit(Lvendor/samsung/frameworks/hdrsolution/HdrDisplayNitMapper;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "nit) Out of Bound("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    .end local v0    # "platformBrightness":I
    .end local v1    # "arrLen":I
    .end local v2    # "actualBrightness":I
    :cond_ad
    :goto_ad
    return-void
.end method
