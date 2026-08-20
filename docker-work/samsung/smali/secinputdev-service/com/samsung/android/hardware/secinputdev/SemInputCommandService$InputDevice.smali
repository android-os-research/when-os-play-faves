.class Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;
.super Ljava/lang/Object;
.source "SemInputCommandService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputDevice"
.end annotation


# instance fields
.field private final cmdlistSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final devid:I

.field private final name:Ljava/lang/String;

.field private final supportFeature:I

.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;


# direct methods
.method static bridge synthetic -$$Nest$fgetcmdlistSet(Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->cmdlistSet:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetname(Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->name:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetsupportFeature(Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;)I
    .registers 1

    iget p0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->supportFeature:I

    return p0
.end method

.method public constructor <init>(Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;Ljava/lang/String;I)V
    .registers 5
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "devid"    # I

    .line 151
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->cmdlistSet:Ljava/util/HashSet;

    .line 152
    iput-object p2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->name:Ljava/lang/String;

    .line 153
    iput p3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->devid:I

    .line 154
    invoke-static {p1, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->-$$Nest$mgetSupportFeature(Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->supportFeature:I

    .line 155
    invoke-static {p1, p3}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;->-$$Nest$mgetCommandList(Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->splitCommandList(Ljava/lang/String;)V

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemInputCommandService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;Ljava/lang/String;IILjava/lang/String;)V
    .registers 7
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "devid"    # I
    .param p4, "feature"    # I
    .param p5, "cmdlist"    # Ljava/lang/String;

    .line 159
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputCommandService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->cmdlistSet:Ljava/util/HashSet;

    .line 160
    iput-object p2, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->name:Ljava/lang/String;

    .line 161
    iput p3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->devid:I

    .line 162
    iput p4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->supportFeature:I

    .line 163
    invoke-direct {p0, p5}, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->splitCommandList(Ljava/lang/String;)V

    .line 164
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SemInputCommandService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    return-void
.end method

.method private splitCommandList(Ljava/lang/String;)V
    .registers 9
    .param p1, "cmdlist"    # Ljava/lang/String;

    .line 168
    const-string v0, "NG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 169
    return-void

    .line 171
    :cond_9
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "cmds":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_12
    if-ge v3, v1, :cond_35

    aget-object v4, v0, v3

    .line 173
    .local v4, "cmd":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2d

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x61

    if-lt v5, v6, :cond_32

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7a

    if-le v5, v6, :cond_2d

    .line 174
    goto :goto_32

    .line 175
    :cond_2d
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->cmdlistSet:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 172
    .end local v4    # "cmd":Ljava/lang/String;
    :cond_32
    :goto_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 178
    :cond_35
    return-void
.end method


# virtual methods
.method public getFormatName()Ljava/lang/String;
    .registers 4

    .line 189
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%-8s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InputDevice::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->devid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), cmd_list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->cmdlistSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "info":Ljava/lang/String;
    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->supportFeature:I

    if-gtz v1, :cond_36

    .line 184
    return-object v0

    .line 185
    :cond_36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", support_feature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/samsung/android/hardware/secinputdev/SemInputCommandService$InputDevice;->supportFeature:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "0x%X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
