.class Lcom/android/internal/telephony/phonenumbers/MetadataManager$SingleFileMetadataMaps;
.super Ljava/lang/Object;
.source "MetadataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/phonenumbers/MetadataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SingleFileMetadataMaps"
.end annotation


# instance fields
.field private final blacklist countryCallingCodeToMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist regionCodeToMetadata:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/util/Map;Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;",
            ">;)V"
        }
    .end annotation

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/MetadataManager$SingleFileMetadataMaps;->regionCodeToMetadata:Ljava/util/Map;

    .line 159
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/phonenumbers/MetadataManager$SingleFileMetadataMaps;->countryCallingCodeToMetadata:Ljava/util/Map;

    return-void
.end method

.method static blacklist load(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/MetadataLoader;)Lcom/android/internal/telephony/phonenumbers/MetadataManager$SingleFileMetadataMaps;
    .registers 6

    .line 128
    # invokes: Lcom/android/internal/telephony/phonenumbers/MetadataManager;->getMetadataFromSingleFileName(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/MetadataLoader;)Ljava/util/List;
    invoke-static {p0, p1}, Lcom/android/internal/telephony/phonenumbers/MetadataManager;->access$000(Ljava/lang/String;Lcom/android/internal/telephony/phonenumbers/MetadataLoader;)Ljava/util/List;

    move-result-object p0

    .line 129
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 132
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    .line 133
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "001"

    .line 134
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 136
    invoke-virtual {v1}, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;->getCountryCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 138
    :cond_36
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    .line 141
    :cond_3a
    new-instance p0, Lcom/android/internal/telephony/phonenumbers/MetadataManager$SingleFileMetadataMaps;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/phonenumbers/MetadataManager$SingleFileMetadataMaps;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-object p0
.end method


# virtual methods
.method blacklist get(I)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 2

    .line 167
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/MetadataManager$SingleFileMetadataMaps;->countryCallingCodeToMetadata:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    return-object p0
.end method

.method blacklist get(Ljava/lang/String;)Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;
    .registers 2

    .line 163
    iget-object p0, p0, Lcom/android/internal/telephony/phonenumbers/MetadataManager$SingleFileMetadataMaps;->regionCodeToMetadata:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/phonenumbers/Phonemetadata$PhoneMetadata;

    return-object p0
.end method
