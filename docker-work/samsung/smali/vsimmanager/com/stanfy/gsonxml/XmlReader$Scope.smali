.class final enum Lcom/stanfy/gsonxml/XmlReader$Scope;
.super Ljava/lang/Enum;
.source "XmlReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stanfy/gsonxml/XmlReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Scope"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/stanfy/gsonxml/XmlReader$Scope;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/stanfy/gsonxml/XmlReader$Scope;

.field public static final enum INSIDE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

.field public static final enum INSIDE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

.field public static final enum INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

.field public static final enum INSIDE_PRIMITIVE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

.field public static final enum INSIDE_PRIMITIVE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

.field public static final enum NAME:Lcom/stanfy/gsonxml/XmlReader$Scope;

.field public static final enum PRIMITIVE_VALUE:Lcom/stanfy/gsonxml/XmlReader$Scope;


# instance fields
.field final insideArray:Z


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 24
    new-instance v0, Lcom/stanfy/gsonxml/XmlReader$Scope;

    const-string v1, "INSIDE_OBJECT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/stanfy/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_OBJECT:Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 26
    new-instance v1, Lcom/stanfy/gsonxml/XmlReader$Scope;

    const-string v3, "INSIDE_ARRAY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/stanfy/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;IZ)V

    sput-object v1, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 28
    new-instance v3, Lcom/stanfy/gsonxml/XmlReader$Scope;

    const-string v5, "INSIDE_EMBEDDED_ARRAY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v4}, Lcom/stanfy/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 30
    new-instance v5, Lcom/stanfy/gsonxml/XmlReader$Scope;

    const-string v7, "INSIDE_PRIMITIVE_EMBEDDED_ARRAY"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v4}, Lcom/stanfy/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;IZ)V

    sput-object v5, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_EMBEDDED_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 32
    new-instance v7, Lcom/stanfy/gsonxml/XmlReader$Scope;

    const-string v9, "INSIDE_PRIMITIVE_ARRAY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v4}, Lcom/stanfy/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;IZ)V

    sput-object v7, Lcom/stanfy/gsonxml/XmlReader$Scope;->INSIDE_PRIMITIVE_ARRAY:Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 34
    new-instance v9, Lcom/stanfy/gsonxml/XmlReader$Scope;

    const-string v11, "PRIMITIVE_VALUE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v2}, Lcom/stanfy/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;IZ)V

    sput-object v9, Lcom/stanfy/gsonxml/XmlReader$Scope;->PRIMITIVE_VALUE:Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 36
    new-instance v11, Lcom/stanfy/gsonxml/XmlReader$Scope;

    const-string v13, "NAME"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v2}, Lcom/stanfy/gsonxml/XmlReader$Scope;-><init>(Ljava/lang/String;IZ)V

    sput-object v11, Lcom/stanfy/gsonxml/XmlReader$Scope;->NAME:Lcom/stanfy/gsonxml/XmlReader$Scope;

    .line 22
    const/4 v13, 0x7

    new-array v13, v13, [Lcom/stanfy/gsonxml/XmlReader$Scope;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lcom/stanfy/gsonxml/XmlReader$Scope;->$VALUES:[Lcom/stanfy/gsonxml/XmlReader$Scope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .registers 4
    .param p3, "insideArray"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput-boolean p3, p0, Lcom/stanfy/gsonxml/XmlReader$Scope;->insideArray:Z

    .line 43
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/stanfy/gsonxml/XmlReader$Scope;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/stanfy/gsonxml/XmlReader$Scope;

    return-object v0
.end method

.method public static values()[Lcom/stanfy/gsonxml/XmlReader$Scope;
    .registers 1

    .line 22
    sget-object v0, Lcom/stanfy/gsonxml/XmlReader$Scope;->$VALUES:[Lcom/stanfy/gsonxml/XmlReader$Scope;

    invoke-virtual {v0}, [Lcom/stanfy/gsonxml/XmlReader$Scope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/stanfy/gsonxml/XmlReader$Scope;

    return-object v0
.end method
