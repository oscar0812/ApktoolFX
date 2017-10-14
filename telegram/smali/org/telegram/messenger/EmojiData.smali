.class public Lorg/telegram/messenger/EmojiData;
.super Ljava/lang/Object;
.source "EmojiData.java"


# static fields
.field public static final data:[[Ljava/lang/String;

.field public static final dataChars:[C

.field public static final dataCharsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final dataColored:[[Ljava/lang/String;

.field public static final emojiColored:[Ljava/lang/String;

.field public static final emojiColoredMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final emojiSecret:[Ljava/lang/String;

.field public static final emojiToFE0F:[C

.field public static final emojiToFE0FMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 15
    const/16 v1, 0x5d

    new-array v1, v1, [C

    fill-array-data v1, :array_0

    sput-object v1, Lorg/telegram/messenger/EmojiData;->emojiToFE0F:[C

    .line 29
    const/16 v1, 0xa3

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    sput-object v1, Lorg/telegram/messenger/EmojiData;->dataChars:[C

    .line 49
    const/16 v1, 0x14d

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "\ud83d\ude09"

    aput-object v2, v1, v7

    const-string/jumbo v2, "\ud83d\ude0d"

    aput-object v2, v1, v5

    const-string/jumbo v2, "\ud83d\ude1b"

    aput-object v2, v1, v8

    const-string/jumbo v2, "\ud83d\ude2d"

    aput-object v2, v1, v6

    const-string/jumbo v2, "\ud83d\ude31"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string/jumbo v3, "\ud83d\ude21"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "\ud83d\ude0e"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "\ud83d\ude34"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "\ud83d\ude35"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "\ud83d\ude08"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "\ud83d\ude2c"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "\ud83d\ude07"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "\ud83d\ude0f"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "\ud83d\udc6e"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "\ud83d\udc77"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "\ud83d\udc82"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "\ud83d\udc76"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string/jumbo v3, "\ud83d\udc68"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string/jumbo v3, "\ud83d\udc69"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string/jumbo v3, "\ud83d\udc74"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string/jumbo v3, "\ud83d\udc75"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string/jumbo v3, "\ud83d\ude3b"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string/jumbo v3, "\ud83d\ude3d"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string/jumbo v3, "\ud83d\ude40"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string/jumbo v3, "\ud83d\udc7a"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string/jumbo v3, "\ud83d\ude48"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string/jumbo v3, "\ud83d\ude49"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string/jumbo v3, "\ud83d\ude4a"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string/jumbo v3, "\ud83d\udc80"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string/jumbo v3, "\ud83d\udc7d"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string/jumbo v3, "\ud83d\udca9"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string/jumbo v3, "\ud83d\udd25"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string/jumbo v3, "\ud83d\udca5"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string/jumbo v3, "\ud83d\udca4"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string/jumbo v3, "\ud83d\udc42"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string/jumbo v3, "\ud83d\udc40"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string/jumbo v3, "\ud83d\udc43"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string/jumbo v3, "\ud83d\udc45"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string/jumbo v3, "\ud83d\udc44"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string/jumbo v3, "\ud83d\udc4d"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string/jumbo v3, "\ud83d\udc4e"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string/jumbo v3, "\ud83d\udc4c"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string/jumbo v3, "\ud83d\udc4a"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string/jumbo v3, "\u270c"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string/jumbo v3, "\u270b"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string/jumbo v3, "\ud83d\udc50"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string/jumbo v3, "\ud83d\udc46"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string/jumbo v3, "\ud83d\udc47"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string/jumbo v3, "\ud83d\udc49"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string/jumbo v3, "\ud83d\udc48"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string/jumbo v3, "\ud83d\ude4f"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string/jumbo v3, "\ud83d\udc4f"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string/jumbo v3, "\ud83d\udcaa"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string/jumbo v3, "\ud83d\udeb6"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string/jumbo v3, "\ud83c\udfc3"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string/jumbo v3, "\ud83d\udc83"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string/jumbo v3, "\ud83d\udc6b"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string/jumbo v3, "\ud83d\udc6a"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string/jumbo v3, "\ud83d\udc6c"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string/jumbo v3, "\ud83d\udc6d"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string/jumbo v3, "\ud83d\udc85"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string/jumbo v3, "\ud83c\udfa9"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string/jumbo v3, "\ud83d\udc51"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string/jumbo v3, "\ud83d\udc52"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string/jumbo v3, "\ud83d\udc5f"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string/jumbo v3, "\ud83d\udc5e"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string/jumbo v3, "\ud83d\udc60"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string/jumbo v3, "\ud83d\udc55"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string/jumbo v3, "\ud83d\udc57"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string/jumbo v3, "\ud83d\udc56"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string/jumbo v3, "\ud83d\udc59"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string/jumbo v3, "\ud83d\udc5c"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string/jumbo v3, "\ud83d\udc53"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string/jumbo v3, "\ud83c\udf80"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string/jumbo v3, "\ud83d\udc84"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string/jumbo v3, "\ud83d\udc9b"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string/jumbo v3, "\ud83d\udc99"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string/jumbo v3, "\ud83d\udc9c"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string/jumbo v3, "\ud83d\udc9a"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string/jumbo v3, "\ud83d\udc8d"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string/jumbo v3, "\ud83d\udc8e"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string/jumbo v3, "\ud83d\udc36"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string/jumbo v3, "\ud83d\udc3a"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string/jumbo v3, "\ud83d\udc31"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string/jumbo v3, "\ud83d\udc2d"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string/jumbo v3, "\ud83d\udc39"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string/jumbo v3, "\ud83d\udc30"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string/jumbo v3, "\ud83d\udc38"

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string/jumbo v3, "\ud83d\udc2f"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string/jumbo v3, "\ud83d\udc28"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string/jumbo v3, "\ud83d\udc3b"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string/jumbo v3, "\ud83d\udc37"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string/jumbo v3, "\ud83d\udc2e"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string/jumbo v3, "\ud83d\udc17"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string/jumbo v3, "\ud83d\udc34"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string/jumbo v3, "\ud83d\udc11"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string/jumbo v3, "\ud83d\udc18"

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string/jumbo v3, "\ud83d\udc3c"

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-string/jumbo v3, "\ud83d\udc27"

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-string/jumbo v3, "\ud83d\udc25"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string/jumbo v3, "\ud83d\udc14"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const-string/jumbo v3, "\ud83d\udc0d"

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const-string/jumbo v3, "\ud83d\udc22"

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-string/jumbo v3, "\ud83d\udc1b"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string/jumbo v3, "\ud83d\udc1d"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string/jumbo v3, "\ud83d\udc1c"

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string/jumbo v3, "\ud83d\udc1e"

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    const-string/jumbo v3, "\ud83d\udc0c"

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    const-string/jumbo v3, "\ud83d\udc19"

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    const-string/jumbo v3, "\ud83d\udc1a"

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    const-string/jumbo v3, "\ud83d\udc1f"

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    const-string/jumbo v3, "\ud83d\udc2c"

    aput-object v3, v1, v2

    const/16 v2, 0x70

    const-string/jumbo v3, "\ud83d\udc0b"

    aput-object v3, v1, v2

    const/16 v2, 0x71

    const-string/jumbo v3, "\ud83d\udc10"

    aput-object v3, v1, v2

    const/16 v2, 0x72

    const-string/jumbo v3, "\ud83d\udc0a"

    aput-object v3, v1, v2

    const/16 v2, 0x73

    const-string/jumbo v3, "\ud83d\udc2b"

    aput-object v3, v1, v2

    const/16 v2, 0x74

    const-string/jumbo v3, "\ud83c\udf40"

    aput-object v3, v1, v2

    const/16 v2, 0x75

    const-string/jumbo v3, "\ud83c\udf39"

    aput-object v3, v1, v2

    const/16 v2, 0x76

    const-string/jumbo v3, "\ud83c\udf3b"

    aput-object v3, v1, v2

    const/16 v2, 0x77

    const-string/jumbo v3, "\ud83c\udf41"

    aput-object v3, v1, v2

    const/16 v2, 0x78

    const-string/jumbo v3, "\ud83c\udf3e"

    aput-object v3, v1, v2

    const/16 v2, 0x79

    const-string/jumbo v3, "\ud83c\udf44"

    aput-object v3, v1, v2

    const/16 v2, 0x7a

    const-string/jumbo v3, "\ud83c\udf35"

    aput-object v3, v1, v2

    const/16 v2, 0x7b

    const-string/jumbo v3, "\ud83c\udf34"

    aput-object v3, v1, v2

    const/16 v2, 0x7c

    const-string/jumbo v3, "\ud83c\udf33"

    aput-object v3, v1, v2

    const/16 v2, 0x7d

    const-string/jumbo v3, "\ud83c\udf1e"

    aput-object v3, v1, v2

    const/16 v2, 0x7e

    const-string/jumbo v3, "\ud83c\udf1a"

    aput-object v3, v1, v2

    const/16 v2, 0x7f

    const-string/jumbo v3, "\ud83c\udf19"

    aput-object v3, v1, v2

    const/16 v2, 0x80

    const-string/jumbo v3, "\ud83c\udf0e"

    aput-object v3, v1, v2

    const/16 v2, 0x81

    const-string/jumbo v3, "\ud83c\udf0b"

    aput-object v3, v1, v2

    const/16 v2, 0x82

    const-string/jumbo v3, "\u26a1"

    aput-object v3, v1, v2

    const/16 v2, 0x83

    const-string/jumbo v3, "\u2614"

    aput-object v3, v1, v2

    const/16 v2, 0x84

    const-string/jumbo v3, "\u2744"

    aput-object v3, v1, v2

    const/16 v2, 0x85

    const-string/jumbo v3, "\u26c4"

    aput-object v3, v1, v2

    const/16 v2, 0x86

    const-string/jumbo v3, "\ud83c\udf00"

    aput-object v3, v1, v2

    const/16 v2, 0x87

    const-string/jumbo v3, "\ud83c\udf08"

    aput-object v3, v1, v2

    const/16 v2, 0x88

    const-string/jumbo v3, "\ud83c\udf0a"

    aput-object v3, v1, v2

    const/16 v2, 0x89

    const-string/jumbo v3, "\ud83c\udf93"

    aput-object v3, v1, v2

    const/16 v2, 0x8a

    const-string/jumbo v3, "\ud83c\udf86"

    aput-object v3, v1, v2

    const/16 v2, 0x8b

    const-string/jumbo v3, "\ud83c\udf83"

    aput-object v3, v1, v2

    const/16 v2, 0x8c

    const-string/jumbo v3, "\ud83d\udc7b"

    aput-object v3, v1, v2

    const/16 v2, 0x8d

    const-string/jumbo v3, "\ud83c\udf85"

    aput-object v3, v1, v2

    const/16 v2, 0x8e

    const-string/jumbo v3, "\ud83c\udf84"

    aput-object v3, v1, v2

    const/16 v2, 0x8f

    const-string/jumbo v3, "\ud83c\udf81"

    aput-object v3, v1, v2

    const/16 v2, 0x90

    const-string/jumbo v3, "\ud83c\udf88"

    aput-object v3, v1, v2

    const/16 v2, 0x91

    const-string/jumbo v3, "\ud83d\udd2e"

    aput-object v3, v1, v2

    const/16 v2, 0x92

    const-string/jumbo v3, "\ud83c\udfa5"

    aput-object v3, v1, v2

    const/16 v2, 0x93

    const-string/jumbo v3, "\ud83d\udcf7"

    aput-object v3, v1, v2

    const/16 v2, 0x94

    const-string/jumbo v3, "\ud83d\udcbf"

    aput-object v3, v1, v2

    const/16 v2, 0x95

    const-string/jumbo v3, "\ud83d\udcbb"

    aput-object v3, v1, v2

    const/16 v2, 0x96

    const-string/jumbo v3, "\u260e"

    aput-object v3, v1, v2

    const/16 v2, 0x97

    const-string/jumbo v3, "\ud83d\udce1"

    aput-object v3, v1, v2

    const/16 v2, 0x98

    const-string/jumbo v3, "\ud83d\udcfa"

    aput-object v3, v1, v2

    const/16 v2, 0x99

    const-string/jumbo v3, "\ud83d\udcfb"

    aput-object v3, v1, v2

    const/16 v2, 0x9a

    const-string/jumbo v3, "\ud83d\udd09"

    aput-object v3, v1, v2

    const/16 v2, 0x9b

    const-string/jumbo v3, "\ud83d\udd14"

    aput-object v3, v1, v2

    const/16 v2, 0x9c

    const-string/jumbo v3, "\u23f3"

    aput-object v3, v1, v2

    const/16 v2, 0x9d

    const-string/jumbo v3, "\u23f0"

    aput-object v3, v1, v2

    const/16 v2, 0x9e

    const-string/jumbo v3, "\u231a"

    aput-object v3, v1, v2

    const/16 v2, 0x9f

    const-string/jumbo v3, "\ud83d\udd12"

    aput-object v3, v1, v2

    const/16 v2, 0xa0

    const-string/jumbo v3, "\ud83d\udd11"

    aput-object v3, v1, v2

    const/16 v2, 0xa1

    const-string/jumbo v3, "\ud83d\udd0e"

    aput-object v3, v1, v2

    const/16 v2, 0xa2

    const-string/jumbo v3, "\ud83d\udca1"

    aput-object v3, v1, v2

    const/16 v2, 0xa3

    const-string/jumbo v3, "\ud83d\udd26"

    aput-object v3, v1, v2

    const/16 v2, 0xa4

    const-string/jumbo v3, "\ud83d\udd0c"

    aput-object v3, v1, v2

    const/16 v2, 0xa5

    const-string/jumbo v3, "\ud83d\udd0b"

    aput-object v3, v1, v2

    const/16 v2, 0xa6

    const-string/jumbo v3, "\ud83d\udebf"

    aput-object v3, v1, v2

    const/16 v2, 0xa7

    const-string/jumbo v3, "\ud83d\udebd"

    aput-object v3, v1, v2

    const/16 v2, 0xa8

    const-string/jumbo v3, "\ud83d\udd27"

    aput-object v3, v1, v2

    const/16 v2, 0xa9

    const-string/jumbo v3, "\ud83d\udd28"

    aput-object v3, v1, v2

    const/16 v2, 0xaa

    const-string/jumbo v3, "\ud83d\udeaa"

    aput-object v3, v1, v2

    const/16 v2, 0xab

    const-string/jumbo v3, "\ud83d\udeac"

    aput-object v3, v1, v2

    const/16 v2, 0xac

    const-string/jumbo v3, "\ud83d\udca3"

    aput-object v3, v1, v2

    const/16 v2, 0xad

    const-string/jumbo v3, "\ud83d\udd2b"

    aput-object v3, v1, v2

    const/16 v2, 0xae

    const-string/jumbo v3, "\ud83d\udd2a"

    aput-object v3, v1, v2

    const/16 v2, 0xaf

    const-string/jumbo v3, "\ud83d\udc8a"

    aput-object v3, v1, v2

    const/16 v2, 0xb0

    const-string/jumbo v3, "\ud83d\udc89"

    aput-object v3, v1, v2

    const/16 v2, 0xb1

    const-string/jumbo v3, "\ud83d\udcb0"

    aput-object v3, v1, v2

    const/16 v2, 0xb2

    const-string/jumbo v3, "\ud83d\udcb5"

    aput-object v3, v1, v2

    const/16 v2, 0xb3

    const-string/jumbo v3, "\ud83d\udcb3"

    aput-object v3, v1, v2

    const/16 v2, 0xb4

    const-string/jumbo v3, "\u2709"

    aput-object v3, v1, v2

    const/16 v2, 0xb5

    const-string/jumbo v3, "\ud83d\udceb"

    aput-object v3, v1, v2

    const/16 v2, 0xb6

    const-string/jumbo v3, "\ud83d\udce6"

    aput-object v3, v1, v2

    const/16 v2, 0xb7

    const-string/jumbo v3, "\ud83d\udcc5"

    aput-object v3, v1, v2

    const/16 v2, 0xb8

    const-string/jumbo v3, "\ud83d\udcc1"

    aput-object v3, v1, v2

    const/16 v2, 0xb9

    const-string/jumbo v3, "\u2702"

    aput-object v3, v1, v2

    const/16 v2, 0xba

    const-string/jumbo v3, "\ud83d\udccc"

    aput-object v3, v1, v2

    const/16 v2, 0xbb

    const-string/jumbo v3, "\ud83d\udcce"

    aput-object v3, v1, v2

    const/16 v2, 0xbc

    const-string/jumbo v3, "\u2712"

    aput-object v3, v1, v2

    const/16 v2, 0xbd

    const-string/jumbo v3, "\u270f"

    aput-object v3, v1, v2

    const/16 v2, 0xbe

    const-string/jumbo v3, "\ud83d\udcd0"

    aput-object v3, v1, v2

    const/16 v2, 0xbf

    const-string/jumbo v3, "\ud83d\udcda"

    aput-object v3, v1, v2

    const/16 v2, 0xc0

    const-string/jumbo v3, "\ud83d\udd2c"

    aput-object v3, v1, v2

    const/16 v2, 0xc1

    const-string/jumbo v3, "\ud83d\udd2d"

    aput-object v3, v1, v2

    const/16 v2, 0xc2

    const-string/jumbo v3, "\ud83c\udfa8"

    aput-object v3, v1, v2

    const/16 v2, 0xc3

    const-string/jumbo v3, "\ud83c\udfac"

    aput-object v3, v1, v2

    const/16 v2, 0xc4

    const-string/jumbo v3, "\ud83c\udfa4"

    aput-object v3, v1, v2

    const/16 v2, 0xc5

    const-string/jumbo v3, "\ud83c\udfa7"

    aput-object v3, v1, v2

    const/16 v2, 0xc6

    const-string/jumbo v3, "\ud83c\udfb5"

    aput-object v3, v1, v2

    const/16 v2, 0xc7

    const-string/jumbo v3, "\ud83c\udfb9"

    aput-object v3, v1, v2

    const/16 v2, 0xc8

    const-string/jumbo v3, "\ud83c\udfbb"

    aput-object v3, v1, v2

    const/16 v2, 0xc9

    const-string/jumbo v3, "\ud83c\udfba"

    aput-object v3, v1, v2

    const/16 v2, 0xca

    const-string/jumbo v3, "\ud83c\udfb8"

    aput-object v3, v1, v2

    const/16 v2, 0xcb

    const-string/jumbo v3, "\ud83d\udc7e"

    aput-object v3, v1, v2

    const/16 v2, 0xcc

    const-string/jumbo v3, "\ud83c\udfae"

    aput-object v3, v1, v2

    const/16 v2, 0xcd

    const-string/jumbo v3, "\ud83c\udccf"

    aput-object v3, v1, v2

    const/16 v2, 0xce

    const-string/jumbo v3, "\ud83c\udfb2"

    aput-object v3, v1, v2

    const/16 v2, 0xcf

    const-string/jumbo v3, "\ud83c\udfaf"

    aput-object v3, v1, v2

    const/16 v2, 0xd0

    const-string/jumbo v3, "\ud83c\udfc8"

    aput-object v3, v1, v2

    const/16 v2, 0xd1

    const-string/jumbo v3, "\ud83c\udfc0"

    aput-object v3, v1, v2

    const/16 v2, 0xd2

    const-string/jumbo v3, "\u26bd"

    aput-object v3, v1, v2

    const/16 v2, 0xd3

    const-string/jumbo v3, "\u26be"

    aput-object v3, v1, v2

    const/16 v2, 0xd4

    const-string/jumbo v3, "\ud83c\udfbe"

    aput-object v3, v1, v2

    const/16 v2, 0xd5

    const-string/jumbo v3, "\ud83c\udfb1"

    aput-object v3, v1, v2

    const/16 v2, 0xd6

    const-string/jumbo v3, "\ud83c\udfc9"

    aput-object v3, v1, v2

    const/16 v2, 0xd7

    const-string/jumbo v3, "\ud83c\udfb3"

    aput-object v3, v1, v2

    const/16 v2, 0xd8

    const-string/jumbo v3, "\ud83c\udfc1"

    aput-object v3, v1, v2

    const/16 v2, 0xd9

    const-string/jumbo v3, "\ud83c\udfc7"

    aput-object v3, v1, v2

    const/16 v2, 0xda

    const-string/jumbo v3, "\ud83c\udfc6"

    aput-object v3, v1, v2

    const/16 v2, 0xdb

    const-string/jumbo v3, "\ud83c\udfca"

    aput-object v3, v1, v2

    const/16 v2, 0xdc

    const-string/jumbo v3, "\ud83c\udfc4"

    aput-object v3, v1, v2

    const/16 v2, 0xdd

    const-string/jumbo v3, "\u2615"

    aput-object v3, v1, v2

    const/16 v2, 0xde

    const-string/jumbo v3, "\ud83c\udf7c"

    aput-object v3, v1, v2

    const/16 v2, 0xdf

    const-string/jumbo v3, "\ud83c\udf7a"

    aput-object v3, v1, v2

    const/16 v2, 0xe0

    const-string/jumbo v3, "\ud83c\udf77"

    aput-object v3, v1, v2

    const/16 v2, 0xe1

    const-string/jumbo v3, "\ud83c\udf74"

    aput-object v3, v1, v2

    const/16 v2, 0xe2

    const-string/jumbo v3, "\ud83c\udf55"

    aput-object v3, v1, v2

    const/16 v2, 0xe3

    const-string/jumbo v3, "\ud83c\udf54"

    aput-object v3, v1, v2

    const/16 v2, 0xe4

    const-string/jumbo v3, "\ud83c\udf5f"

    aput-object v3, v1, v2

    const/16 v2, 0xe5

    const-string/jumbo v3, "\ud83c\udf57"

    aput-object v3, v1, v2

    const/16 v2, 0xe6

    const-string/jumbo v3, "\ud83c\udf71"

    aput-object v3, v1, v2

    const/16 v2, 0xe7

    const-string/jumbo v3, "\ud83c\udf5a"

    aput-object v3, v1, v2

    const/16 v2, 0xe8

    const-string/jumbo v3, "\ud83c\udf5c"

    aput-object v3, v1, v2

    const/16 v2, 0xe9

    const-string/jumbo v3, "\ud83c\udf61"

    aput-object v3, v1, v2

    const/16 v2, 0xea

    const-string/jumbo v3, "\ud83c\udf73"

    aput-object v3, v1, v2

    const/16 v2, 0xeb

    const-string/jumbo v3, "\ud83c\udf5e"

    aput-object v3, v1, v2

    const/16 v2, 0xec

    const-string/jumbo v3, "\ud83c\udf69"

    aput-object v3, v1, v2

    const/16 v2, 0xed

    const-string/jumbo v3, "\ud83c\udf66"

    aput-object v3, v1, v2

    const/16 v2, 0xee

    const-string/jumbo v3, "\ud83c\udf82"

    aput-object v3, v1, v2

    const/16 v2, 0xef

    const-string/jumbo v3, "\ud83c\udf70"

    aput-object v3, v1, v2

    const/16 v2, 0xf0

    const-string/jumbo v3, "\ud83c\udf6a"

    aput-object v3, v1, v2

    const/16 v2, 0xf1

    const-string/jumbo v3, "\ud83c\udf6b"

    aput-object v3, v1, v2

    const/16 v2, 0xf2

    const-string/jumbo v3, "\ud83c\udf6d"

    aput-object v3, v1, v2

    const/16 v2, 0xf3

    const-string/jumbo v3, "\ud83c\udf6f"

    aput-object v3, v1, v2

    const/16 v2, 0xf4

    const-string/jumbo v3, "\ud83c\udf4e"

    aput-object v3, v1, v2

    const/16 v2, 0xf5

    const-string/jumbo v3, "\ud83c\udf4f"

    aput-object v3, v1, v2

    const/16 v2, 0xf6

    const-string/jumbo v3, "\ud83c\udf4a"

    aput-object v3, v1, v2

    const/16 v2, 0xf7

    const-string/jumbo v3, "\ud83c\udf4b"

    aput-object v3, v1, v2

    const/16 v2, 0xf8

    const-string/jumbo v3, "\ud83c\udf52"

    aput-object v3, v1, v2

    const/16 v2, 0xf9

    const-string/jumbo v3, "\ud83c\udf47"

    aput-object v3, v1, v2

    const/16 v2, 0xfa

    const-string/jumbo v3, "\ud83c\udf49"

    aput-object v3, v1, v2

    const/16 v2, 0xfb

    const-string/jumbo v3, "\ud83c\udf53"

    aput-object v3, v1, v2

    const/16 v2, 0xfc

    const-string/jumbo v3, "\ud83c\udf51"

    aput-object v3, v1, v2

    const/16 v2, 0xfd

    const-string/jumbo v3, "\ud83c\udf4c"

    aput-object v3, v1, v2

    const/16 v2, 0xfe

    const-string/jumbo v3, "\ud83c\udf50"

    aput-object v3, v1, v2

    const/16 v2, 0xff

    const-string/jumbo v3, "\ud83c\udf4d"

    aput-object v3, v1, v2

    const/16 v2, 0x100

    const-string/jumbo v3, "\ud83c\udf46"

    aput-object v3, v1, v2

    const/16 v2, 0x101

    const-string/jumbo v3, "\ud83c\udf45"

    aput-object v3, v1, v2

    const/16 v2, 0x102

    const-string/jumbo v3, "\ud83c\udf3d"

    aput-object v3, v1, v2

    const/16 v2, 0x103

    const-string/jumbo v3, "\ud83c\udfe1"

    aput-object v3, v1, v2

    const/16 v2, 0x104

    const-string/jumbo v3, "\ud83c\udfe5"

    aput-object v3, v1, v2

    const/16 v2, 0x105

    const-string/jumbo v3, "\ud83c\udfe6"

    aput-object v3, v1, v2

    const/16 v2, 0x106

    const-string/jumbo v3, "\u26ea"

    aput-object v3, v1, v2

    const/16 v2, 0x107

    const-string/jumbo v3, "\ud83c\udff0"

    aput-object v3, v1, v2

    const/16 v2, 0x108

    const-string/jumbo v3, "\u26fa"

    aput-object v3, v1, v2

    const/16 v2, 0x109

    const-string/jumbo v3, "\ud83c\udfed"

    aput-object v3, v1, v2

    const/16 v2, 0x10a

    const-string/jumbo v3, "\ud83d\uddfb"

    aput-object v3, v1, v2

    const/16 v2, 0x10b

    const-string/jumbo v3, "\ud83d\uddfd"

    aput-object v3, v1, v2

    const/16 v2, 0x10c

    const-string/jumbo v3, "\ud83c\udfa0"

    aput-object v3, v1, v2

    const/16 v2, 0x10d

    const-string/jumbo v3, "\ud83c\udfa1"

    aput-object v3, v1, v2

    const/16 v2, 0x10e

    const-string/jumbo v3, "\u26f2"

    aput-object v3, v1, v2

    const/16 v2, 0x10f

    const-string/jumbo v3, "\ud83c\udfa2"

    aput-object v3, v1, v2

    const/16 v2, 0x110

    const-string/jumbo v3, "\ud83d\udea2"

    aput-object v3, v1, v2

    const/16 v2, 0x111

    const-string/jumbo v3, "\ud83d\udea4"

    aput-object v3, v1, v2

    const/16 v2, 0x112

    const-string/jumbo v3, "\u2693"

    aput-object v3, v1, v2

    const/16 v2, 0x113

    const-string/jumbo v3, "\ud83d\ude80"

    aput-object v3, v1, v2

    const/16 v2, 0x114

    const-string/jumbo v3, "\u2708"

    aput-object v3, v1, v2

    const/16 v2, 0x115

    const-string/jumbo v3, "\ud83d\ude81"

    aput-object v3, v1, v2

    const/16 v2, 0x116

    const-string/jumbo v3, "\ud83d\ude82"

    aput-object v3, v1, v2

    const/16 v2, 0x117

    const-string/jumbo v3, "\ud83d\ude8b"

    aput-object v3, v1, v2

    const/16 v2, 0x118

    const-string/jumbo v3, "\ud83d\ude8e"

    aput-object v3, v1, v2

    const/16 v2, 0x119

    const-string/jumbo v3, "\ud83d\ude8c"

    aput-object v3, v1, v2

    const/16 v2, 0x11a

    const-string/jumbo v3, "\ud83d\ude99"

    aput-object v3, v1, v2

    const/16 v2, 0x11b

    const-string/jumbo v3, "\ud83d\ude97"

    aput-object v3, v1, v2

    const/16 v2, 0x11c

    const-string/jumbo v3, "\ud83d\ude95"

    aput-object v3, v1, v2

    const/16 v2, 0x11d

    const-string/jumbo v3, "\ud83d\ude9b"

    aput-object v3, v1, v2

    const/16 v2, 0x11e

    const-string/jumbo v3, "\ud83d\udea8"

    aput-object v3, v1, v2

    const/16 v2, 0x11f

    const-string/jumbo v3, "\ud83d\ude94"

    aput-object v3, v1, v2

    const/16 v2, 0x120

    const-string/jumbo v3, "\ud83d\ude92"

    aput-object v3, v1, v2

    const/16 v2, 0x121

    const-string/jumbo v3, "\ud83d\ude91"

    aput-object v3, v1, v2

    const/16 v2, 0x122

    const-string/jumbo v3, "\ud83d\udeb2"

    aput-object v3, v1, v2

    const/16 v2, 0x123

    const-string/jumbo v3, "\ud83d\udea0"

    aput-object v3, v1, v2

    const/16 v2, 0x124

    const-string/jumbo v3, "\ud83d\ude9c"

    aput-object v3, v1, v2

    const/16 v2, 0x125

    const-string/jumbo v3, "\ud83d\udea6"

    aput-object v3, v1, v2

    const/16 v2, 0x126

    const-string/jumbo v3, "\u26a0"

    aput-object v3, v1, v2

    const/16 v2, 0x127

    const-string/jumbo v3, "\ud83d\udea7"

    aput-object v3, v1, v2

    const/16 v2, 0x128

    const-string/jumbo v3, "\u26fd"

    aput-object v3, v1, v2

    const/16 v2, 0x129

    const-string/jumbo v3, "\ud83c\udfb0"

    aput-object v3, v1, v2

    const/16 v2, 0x12a

    const-string/jumbo v3, "\ud83d\uddff"

    aput-object v3, v1, v2

    const/16 v2, 0x12b

    const-string/jumbo v3, "\ud83c\udfaa"

    aput-object v3, v1, v2

    const/16 v2, 0x12c

    const-string/jumbo v3, "\ud83c\udfad"

    aput-object v3, v1, v2

    const/16 v2, 0x12d

    const-string/jumbo v3, "\ud83c\uddef\ud83c\uddf5"

    aput-object v3, v1, v2

    const/16 v2, 0x12e

    const-string/jumbo v3, "\ud83c\uddf0\ud83c\uddf7"

    aput-object v3, v1, v2

    const/16 v2, 0x12f

    const-string/jumbo v3, "\ud83c\udde9\ud83c\uddea"

    aput-object v3, v1, v2

    const/16 v2, 0x130

    const-string/jumbo v3, "\ud83c\udde8\ud83c\uddf3"

    aput-object v3, v1, v2

    const/16 v2, 0x131

    const-string/jumbo v3, "\ud83c\uddfa\ud83c\uddf8"

    aput-object v3, v1, v2

    const/16 v2, 0x132

    const-string/jumbo v3, "\ud83c\uddeb\ud83c\uddf7"

    aput-object v3, v1, v2

    const/16 v2, 0x133

    const-string/jumbo v3, "\ud83c\uddea\ud83c\uddf8"

    aput-object v3, v1, v2

    const/16 v2, 0x134

    const-string/jumbo v3, "\ud83c\uddee\ud83c\uddf9"

    aput-object v3, v1, v2

    const/16 v2, 0x135

    const-string/jumbo v3, "\ud83c\uddf7\ud83c\uddfa"

    aput-object v3, v1, v2

    const/16 v2, 0x136

    const-string/jumbo v3, "\ud83c\uddec\ud83c\udde7"

    aput-object v3, v1, v2

    const/16 v2, 0x137

    const-string/jumbo v3, "1\u20e3"

    aput-object v3, v1, v2

    const/16 v2, 0x138

    const-string/jumbo v3, "2\u20e3"

    aput-object v3, v1, v2

    const/16 v2, 0x139

    const-string/jumbo v3, "3\u20e3"

    aput-object v3, v1, v2

    const/16 v2, 0x13a

    const-string/jumbo v3, "4\u20e3"

    aput-object v3, v1, v2

    const/16 v2, 0x13b

    const-string/jumbo v3, "5\u20e3"

    aput-object v3, v1, v2

    const/16 v2, 0x13c

    const-string/jumbo v3, "6\u20e3"

    aput-object v3, v1, v2

    const/16 v2, 0x13d

    const-string/jumbo v3, "7\u20e3"

    aput-object v3, v1, v2

    const/16 v2, 0x13e

    const-string/jumbo v3, "8\u20e3"

    aput-object v3, v1, v2

    const/16 v2, 0x13f

    const-string/jumbo v3, "9\u20e3"

    aput-object v3, v1, v2

    const/16 v2, 0x140

    const-string/jumbo v3, "0\u20e3"

    aput-object v3, v1, v2

    const/16 v2, 0x141

    const-string/jumbo v3, "\ud83d\udd1f"

    aput-object v3, v1, v2

    const/16 v2, 0x142

    const-string/jumbo v3, "\u2757"

    aput-object v3, v1, v2

    const/16 v2, 0x143

    const-string/jumbo v3, "\u2753"

    aput-object v3, v1, v2

    const/16 v2, 0x144

    const-string/jumbo v3, "\u2665"

    aput-object v3, v1, v2

    const/16 v2, 0x145

    const-string/jumbo v3, "\u2666"

    aput-object v3, v1, v2

    const/16 v2, 0x146

    const-string/jumbo v3, "\ud83d\udcaf"

    aput-object v3, v1, v2

    const/16 v2, 0x147

    const-string/jumbo v3, "\ud83d\udd17"

    aput-object v3, v1, v2

    const/16 v2, 0x148

    const-string/jumbo v3, "\ud83d\udd31"

    aput-object v3, v1, v2

    const/16 v2, 0x149

    const-string/jumbo v3, "\ud83d\udd34"

    aput-object v3, v1, v2

    const/16 v2, 0x14a

    const-string/jumbo v3, "\ud83d\udd35"

    aput-object v3, v1, v2

    const/16 v2, 0x14b

    const-string/jumbo v3, "\ud83d\udd36"

    aput-object v3, v1, v2

    const/16 v2, 0x14c

    const-string/jumbo v3, "\ud83d\udd37"

    aput-object v3, v1, v2

    sput-object v1, Lorg/telegram/messenger/EmojiData;->emojiSecret:[Ljava/lang/String;

    .line 62
    const/16 v1, 0x98

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "\ud83d\udc50"

    aput-object v2, v1, v7

    const-string/jumbo v2, "\ud83d\ude4c"

    aput-object v2, v1, v5

    const-string/jumbo v2, "\ud83d\udc4f"

    aput-object v2, v1, v8

    const-string/jumbo v2, "\ud83d\ude4f"

    aput-object v2, v1, v6

    const-string/jumbo v2, "\ud83d\udc4d"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string/jumbo v3, "\ud83d\udc4e"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "\ud83d\udc4a"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "\u270a"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, "\ud83e\udd1b"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v3, "\ud83e\udd1c"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "\ud83e\udd1e"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v3, "\u270c"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v3, "\ud83e\udd18"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v3, "\ud83d\udc4c"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "\ud83d\udc48"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "\ud83d\udc49"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "\ud83d\udc46"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string/jumbo v3, "\ud83d\udc47"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string/jumbo v3, "\u261d"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string/jumbo v3, "\u270b"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string/jumbo v3, "\ud83e\udd1a"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string/jumbo v3, "\ud83d\udd90"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string/jumbo v3, "\ud83d\udd96"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string/jumbo v3, "\ud83d\udc4b"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string/jumbo v3, "\ud83e\udd19"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string/jumbo v3, "\ud83d\udcaa"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string/jumbo v3, "\ud83d\udd95"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string/jumbo v3, "\u270d"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string/jumbo v3, "\ud83e\udd33"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string/jumbo v3, "\ud83d\udc85"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string/jumbo v3, "\ud83d\udc42"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string/jumbo v3, "\ud83d\udc43"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string/jumbo v3, "\ud83d\udc76"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string/jumbo v3, "\ud83d\udc66"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string/jumbo v3, "\ud83d\udc67"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string/jumbo v3, "\ud83d\udc68"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string/jumbo v3, "\ud83d\udc69"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string/jumbo v3, "\ud83d\udc71\u200d\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string/jumbo v3, "\ud83d\udc71"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string/jumbo v3, "\ud83d\udc74"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string/jumbo v3, "\ud83d\udc75"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string/jumbo v3, "\ud83d\udc72"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string/jumbo v3, "\ud83d\udc73\u200d\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string/jumbo v3, "\ud83d\udc73"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string/jumbo v3, "\ud83d\udc6e\u200d\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string/jumbo v3, "\ud83d\udc6e"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string/jumbo v3, "\ud83d\udc77\u200d\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string/jumbo v3, "\ud83d\udc77"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string/jumbo v3, "\ud83d\udc82\u200d\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string/jumbo v3, "\ud83d\udc82"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string/jumbo v3, "\ud83d\udd75\u200d\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string/jumbo v3, "\ud83d\udd75"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string/jumbo v3, "\ud83d\udc69\u200d\u2695"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string/jumbo v3, "\ud83d\udc68\u200d\u2695"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string/jumbo v3, "\ud83d\udc69\u200d\ud83c\udf3e"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string/jumbo v3, "\ud83d\udc68\u200d\ud83c\udf3e"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string/jumbo v3, "\ud83d\udc69\u200d\ud83c\udf73"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string/jumbo v3, "\ud83d\udc68\u200d\ud83c\udf73"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string/jumbo v3, "\ud83d\udc69\u200d\ud83c\udf93"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string/jumbo v3, "\ud83d\udc68\u200d\ud83c\udf93"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string/jumbo v3, "\ud83d\udc69\u200d\ud83c\udfa4"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string/jumbo v3, "\ud83d\udc68\u200d\ud83c\udfa4"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string/jumbo v3, "\ud83d\udc69\u200d\ud83c\udfeb"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string/jumbo v3, "\ud83d\udc68\u200d\ud83c\udfeb"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string/jumbo v3, "\ud83d\udc69\u200d\ud83c\udfed"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string/jumbo v3, "\ud83d\udc68\u200d\ud83c\udfed"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string/jumbo v3, "\ud83d\udc69\u200d\ud83d\udcbb"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string/jumbo v3, "\ud83d\udc68\u200d\ud83d\udcbb"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string/jumbo v3, "\ud83d\udc69\u200d\ud83d\udcbc"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string/jumbo v3, "\ud83d\udc68\u200d\ud83d\udcbc"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string/jumbo v3, "\ud83d\udc69\u200d\ud83d\udd27"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string/jumbo v3, "\ud83d\udc68\u200d\ud83d\udd27"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string/jumbo v3, "\ud83d\udc69\u200d\ud83d\udd2c"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string/jumbo v3, "\ud83d\udc68\u200d\ud83d\udd2c"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string/jumbo v3, "\ud83d\udc69\u200d\ud83c\udfa8"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string/jumbo v3, "\ud83d\udc68\u200d\ud83c\udfa8"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string/jumbo v3, "\ud83d\udc69\u200d\ud83d\ude92"

    aput-object v3, v1, v2

    const/16 v2, 0x4d

    const-string/jumbo v3, "\ud83d\udc68\u200d\ud83d\ude92"

    aput-object v3, v1, v2

    const/16 v2, 0x4e

    const-string/jumbo v3, "\ud83d\udc69\u200d\u2708"

    aput-object v3, v1, v2

    const/16 v2, 0x4f

    const-string/jumbo v3, "\ud83d\udc68\u200d\u2708"

    aput-object v3, v1, v2

    const/16 v2, 0x50

    const-string/jumbo v3, "\ud83d\udc69\u200d\ud83d\ude80"

    aput-object v3, v1, v2

    const/16 v2, 0x51

    const-string/jumbo v3, "\ud83d\udc68\u200d\ud83d\ude80"

    aput-object v3, v1, v2

    const/16 v2, 0x52

    const-string/jumbo v3, "\ud83d\udc69\u200d\u2696"

    aput-object v3, v1, v2

    const/16 v2, 0x53

    const-string/jumbo v3, "\ud83d\udc68\u200d\u2696"

    aput-object v3, v1, v2

    const/16 v2, 0x54

    const-string/jumbo v3, "\ud83e\udd36"

    aput-object v3, v1, v2

    const/16 v2, 0x55

    const-string/jumbo v3, "\ud83c\udf85"

    aput-object v3, v1, v2

    const/16 v2, 0x56

    const-string/jumbo v3, "\ud83d\udc78"

    aput-object v3, v1, v2

    const/16 v2, 0x57

    const-string/jumbo v3, "\ud83e\udd34"

    aput-object v3, v1, v2

    const/16 v2, 0x58

    const-string/jumbo v3, "\ud83d\udc70"

    aput-object v3, v1, v2

    const/16 v2, 0x59

    const-string/jumbo v3, "\ud83e\udd35"

    aput-object v3, v1, v2

    const/16 v2, 0x5a

    const-string/jumbo v3, "\ud83d\udc7c"

    aput-object v3, v1, v2

    const/16 v2, 0x5b

    const-string/jumbo v3, "\ud83e\udd30"

    aput-object v3, v1, v2

    const/16 v2, 0x5c

    const-string/jumbo v3, "\ud83d\ude47\u200d\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x5d

    const-string/jumbo v3, "\ud83d\ude47"

    aput-object v3, v1, v2

    const/16 v2, 0x5e

    const-string/jumbo v3, "\ud83d\udc81"

    aput-object v3, v1, v2

    const/16 v2, 0x5f

    const-string/jumbo v3, "\ud83d\udc81\u200d\u2642"

    aput-object v3, v1, v2

    const/16 v2, 0x60

    const-string/jumbo v3, "\ud83d\ude45"

    aput-object v3, v1, v2

    const/16 v2, 0x61

    const-string/jumbo v3, "\ud83d\ude45\u200d\u2642"

    aput-object v3, v1, v2

    const/16 v2, 0x62

    const-string/jumbo v3, "\ud83d\ude46"

    aput-object v3, v1, v2

    const/16 v2, 0x63

    const-string/jumbo v3, "\ud83d\ude46\u200d\u2642"

    aput-object v3, v1, v2

    const/16 v2, 0x64

    const-string/jumbo v3, "\ud83d\ude4b"

    aput-object v3, v1, v2

    const/16 v2, 0x65

    const-string/jumbo v3, "\ud83d\ude4b\u200d\u2642"

    aput-object v3, v1, v2

    const/16 v2, 0x66

    const-string/jumbo v3, "\ud83e\udd26\u200d\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x67

    const-string/jumbo v3, "\ud83e\udd26\u200d\u2642"

    aput-object v3, v1, v2

    const/16 v2, 0x68

    const-string/jumbo v3, "\ud83e\udd37\u200d\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x69

    const-string/jumbo v3, "\ud83e\udd37\u200d\u2642"

    aput-object v3, v1, v2

    const/16 v2, 0x6a

    const-string/jumbo v3, "\ud83d\ude4e"

    aput-object v3, v1, v2

    const/16 v2, 0x6b

    const-string/jumbo v3, "\ud83d\ude4e\u200d\u2642"

    aput-object v3, v1, v2

    const/16 v2, 0x6c

    const-string/jumbo v3, "\ud83d\ude4d"

    aput-object v3, v1, v2

    const/16 v2, 0x6d

    const-string/jumbo v3, "\ud83d\ude4d\u200d\u2642"

    aput-object v3, v1, v2

    const/16 v2, 0x6e

    const-string/jumbo v3, "\ud83d\udc87"

    aput-object v3, v1, v2

    const/16 v2, 0x6f

    const-string/jumbo v3, "\ud83d\udc87\u200d\u2642"

    aput-object v3, v1, v2

    const/16 v2, 0x70

    const-string/jumbo v3, "\ud83d\udc86"

    aput-object v3, v1, v2

    const/16 v2, 0x71

    const-string/jumbo v3, "\ud83d\udc86\u200d\u2642"

    aput-object v3, v1, v2

    const/16 v2, 0x72

    const-string/jumbo v3, "\ud83d\udd74"

    aput-object v3, v1, v2

    const/16 v2, 0x73

    const-string/jumbo v3, "\ud83d\udc83"

    aput-object v3, v1, v2

    const/16 v2, 0x74

    const-string/jumbo v3, "\ud83d\udd7a"

    aput-object v3, v1, v2

    const/16 v2, 0x75

    const-string/jumbo v3, "\ud83d\udeb6\u200d\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x76

    const-string/jumbo v3, "\ud83d\udeb6"

    aput-object v3, v1, v2

    const/16 v2, 0x77

    const-string/jumbo v3, "\ud83c\udfc3\u200d\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x78

    const-string/jumbo v3, "\ud83c\udfc3"

    aput-object v3, v1, v2

    const/16 v2, 0x79

    const-string/jumbo v3, "\ud83c\udfcb\u200d\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x7a

    const-string/jumbo v3, "\ud83c\udfcb"

    aput-object v3, v1, v2

    const/16 v2, 0x7b

    const-string/jumbo v3, "\ud83e\udd38\u200d\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x7c

    const-string/jumbo v3, "\ud83e\udd38\u200d\u2642"

    aput-object v3, v1, v2

    const/16 v2, 0x7d

    const-string/jumbo v3, "\u26f9\u200d\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x7e

    const-string/jumbo v3, "\u26f9"

    aput-object v3, v1, v2

    const/16 v2, 0x7f

    const-string/jumbo v3, "\ud83e\udd3e\u200d\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x80

    const-string/jumbo v3, "\ud83e\udd3e\u200d\u2642"

    aput-object v3, v1, v2

    const/16 v2, 0x81

    const-string/jumbo v3, "\ud83c\udfcc\u200d\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x82

    const-string/jumbo v3, "\ud83c\udfcc"

    aput-object v3, v1, v2

    const/16 v2, 0x83

    const-string/jumbo v3, "\ud83c\udfc4\u200d\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x84

    const-string/jumbo v3, "\ud83c\udfc4"

    aput-object v3, v1, v2

    const/16 v2, 0x85

    const-string/jumbo v3, "\ud83c\udfca\u200d\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x86

    const-string/jumbo v3, "\ud83c\udfca"

    aput-object v3, v1, v2

    const/16 v2, 0x87

    const-string/jumbo v3, "\ud83e\udd3d\u200d\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x88

    const-string/jumbo v3, "\ud83e\udd3d\u200d\u2642"

    aput-object v3, v1, v2

    const/16 v2, 0x89

    const-string/jumbo v3, "\ud83c\udfc4"

    aput-object v3, v1, v2

    const/16 v2, 0x8a

    const-string/jumbo v3, "\ud83c\udfca\u200d\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x8b

    const-string/jumbo v3, "\ud83c\udfca"

    aput-object v3, v1, v2

    const/16 v2, 0x8c

    const-string/jumbo v3, "\ud83e\udd3d\u200d\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x8d

    const-string/jumbo v3, "\ud83e\udd3d\u200d\u2642"

    aput-object v3, v1, v2

    const/16 v2, 0x8e

    const-string/jumbo v3, "\ud83d\udea3\u200d\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x8f

    const-string/jumbo v3, "\ud83d\udea3"

    aput-object v3, v1, v2

    const/16 v2, 0x90

    const-string/jumbo v3, "\ud83c\udfc7"

    aput-object v3, v1, v2

    const/16 v2, 0x91

    const-string/jumbo v3, "\ud83d\udeb4\u200d\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x92

    const-string/jumbo v3, "\ud83d\udeb4"

    aput-object v3, v1, v2

    const/16 v2, 0x93

    const-string/jumbo v3, "\ud83d\udeb5\u200d\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x94

    const-string/jumbo v3, "\ud83d\udeb5"

    aput-object v3, v1, v2

    const/16 v2, 0x95

    const-string/jumbo v3, "\ud83e\udd39\u200d\u2640"

    aput-object v3, v1, v2

    const/16 v2, 0x96

    const-string/jumbo v3, "\ud83e\udd39\u200d\u2642"

    aput-object v3, v1, v2

    const/16 v2, 0x97

    const-string/jumbo v3, "\ud83d\udec0"

    aput-object v3, v1, v2

    sput-object v1, Lorg/telegram/messenger/EmojiData;->emojiColored:[Ljava/lang/String;

    .line 66
    const/4 v1, 0x5

    new-array v1, v1, [[Ljava/lang/String;

    const/16 v2, 0x132

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "\ud83d\ude00"

    aput-object v3, v2, v7

    const-string/jumbo v3, "\ud83d\ude03"

    aput-object v3, v2, v5

    const-string/jumbo v3, "\ud83d\ude04"

    aput-object v3, v2, v8

    const-string/jumbo v3, "\ud83d\ude01"

    aput-object v3, v2, v6

    const-string/jumbo v3, "\ud83d\ude06"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "\ud83d\ude05"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "\ud83d\ude02"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "\ud83e\udd23"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "\u263a"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "\ud83d\ude0a"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "\ud83d\ude07"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "\ud83d\ude42"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "\ud83d\ude43"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "\ud83d\ude09"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "\ud83d\ude0c"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "\ud83d\ude0d"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "\ud83d\ude18"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "\ud83d\ude17"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "\ud83d\ude19"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "\ud83d\ude1a"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "\ud83d\ude0b"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "\ud83d\ude1c"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "\ud83d\ude1d"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "\ud83d\ude1b"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "\ud83e\udd11"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "\ud83e\udd17"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "\ud83e\udd13"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "\ud83d\ude0e"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "\ud83e\udd21"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "\ud83e\udd20"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "\ud83d\ude0f"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "\ud83d\ude12"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "\ud83d\ude1e"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "\ud83d\ude14"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "\ud83d\ude1f"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "\ud83d\ude15"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "\ud83d\ude41"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "\u2639"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "\ud83d\ude23"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "\ud83d\ude16"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "\ud83d\ude2b"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "\ud83d\ude29"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "\ud83d\ude24"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "\ud83d\ude20"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "\ud83d\ude21"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "\ud83d\ude36"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "\ud83d\ude10"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "\ud83d\ude11"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "\ud83d\ude2f"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "\ud83d\ude26"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "\ud83d\ude27"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "\ud83d\ude2e"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "\ud83d\ude32"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "\ud83d\ude35"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "\ud83d\ude33"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "\ud83d\ude31"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "\ud83d\ude28"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "\ud83d\ude30"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "\ud83d\ude22"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "\ud83d\ude25"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "\ud83e\udd24"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "\ud83d\ude2d"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "\ud83d\ude13"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "\ud83d\ude2a"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "\ud83d\ude34"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "\ud83d\ude44"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "\ud83e\udd14"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "\ud83e\udd25"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "\ud83d\ude2c"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "\ud83e\udd10"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "\ud83e\udd22"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "\ud83e\udd27"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "\ud83d\ude37"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "\ud83e\udd12"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "\ud83e\udd15"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "\ud83d\ude08"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "\ud83d\udc7f"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "\ud83d\udc79"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "\ud83d\udc7a"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "\ud83d\udca9"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "\ud83d\udc7b"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "\ud83d\udc80"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "\u2620"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "\ud83d\udc7d"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "\ud83d\udc7e"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "\ud83e\udd16"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "\ud83c\udf83"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "\ud83d\ude3a"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "\ud83d\ude38"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "\ud83d\ude39"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "\ud83d\ude3b"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "\ud83d\ude3c"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "\ud83d\ude3d"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "\ud83d\ude40"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "\ud83d\ude3f"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "\ud83d\ude3e"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "\ud83d\udc50"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "\ud83d\ude4c"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "\ud83d\udc4f"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "\ud83d\ude4f"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "\ud83e\udd1d"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "\ud83d\udc4d"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "\ud83d\udc4e"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "\ud83d\udc4a"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "\u270a"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "\ud83e\udd1b"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "\ud83e\udd1c"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "\ud83e\udd1e"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "\u270c"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "\ud83e\udd18"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "\ud83d\udc4c"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "\ud83d\udc48"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "\ud83d\udc49"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "\ud83d\udc46"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "\ud83d\udc47"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "\u261d"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "\u270b"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "\ud83e\udd1a"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "\ud83d\udd90"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "\ud83d\udd96"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "\ud83d\udc4b"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "\ud83e\udd19"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "\ud83d\udcaa"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "\ud83d\udd95"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "\u270d"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "\ud83e\udd33"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "\ud83d\udc85"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "\ud83d\udc8d"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "\ud83d\udc84"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "\ud83d\udc8b"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "\ud83d\udc44"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "\ud83d\udc45"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "\ud83d\udc42"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "\ud83d\udc43"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "\ud83d\udc63"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "\ud83d\udc41"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "\ud83d\udc40"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "\ud83d\udde3"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "\ud83d\udc64"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "\ud83d\udc65"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "\ud83d\udc76"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "\ud83d\udc67"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "\ud83d\udc68"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "\ud83d\udc69"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "\ud83d\udc71\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "\ud83d\udc71"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "\ud83d\udc74"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "\ud83d\udc75"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "\ud83d\udc72"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "\ud83d\udc73\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "\ud83d\udc73"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "\ud83d\udc6e\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "\ud83d\udc6e"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "\ud83d\udc77\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "\ud83d\udc77"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "\ud83d\udc82\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "\ud83d\udc82"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "\ud83d\udd75\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "\ud83d\udd75"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "\ud83d\udc69\u200d\u2695"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "\ud83d\udc68\u200d\u2695"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83c\udf3e"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83c\udf3e"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83c\udf73"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83c\udf73"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83c\udf93"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83c\udf93"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83c\udfa4"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83c\udfa4"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83c\udfeb"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83c\udfeb"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83c\udfed"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83c\udfed"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udcbb"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udcbb"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udcbc"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udcbc"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udd27"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udd27"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udd2c"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udd2c"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83c\udfa8"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83c\udfa8"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\ude92"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\ude92"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "\ud83d\udc69\u200d\u2708"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "\ud83d\udc68\u200d\u2708"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\ude80"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\ude80"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "\ud83d\udc69\u200d\u2696"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "\ud83d\udc68\u200d\u2696"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "\ud83e\udd36"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "\ud83c\udf85"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "\ud83d\udc78"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "\ud83e\udd34"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "\ud83d\udc70"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "\ud83e\udd35"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "\ud83d\udc7c"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "\ud83e\udd30"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "\ud83d\ude47\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "\ud83d\ude47"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "\ud83d\udc81"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "\ud83d\udc81\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "\ud83d\ude45"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "\ud83d\ude45\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "\ud83d\ude46"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "\ud83d\ude46\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "\ud83d\ude4b"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "\ud83d\ude4b\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "\ud83e\udd26\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "\ud83e\udd26\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "\ud83e\udd37\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "\ud83e\udd37\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "\ud83d\ude4e"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "\ud83d\ude4e\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "\ud83d\ude4d"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "\ud83d\ude4d\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "\ud83d\udc87"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "\ud83d\udc87\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "\ud83d\udc86"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "\ud83d\udc86\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "\ud83d\udd74"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "\ud83d\udc83"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "\ud83d\udd7a"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "\ud83d\udc6f"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "\ud83d\udc6f\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "\ud83d\udeb6\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "\ud83d\udeb6"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "\ud83c\udfc3\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "\ud83c\udfc3"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "\ud83d\udc6b"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "\ud83d\udc6d"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "\ud83d\udc6c"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "\ud83d\udc91"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "\ud83d\udc69\u200d\u2764\u200d\ud83d\udc69"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "\ud83d\udc68\u200d\u2764\u200d\ud83d\udc68"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "\ud83d\udc8f"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "\ud83d\udc69\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "\ud83d\udc68\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "\ud83d\udc6a"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc69\u200d\ud83d\udc67"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc69\u200d\ud83d\udc66\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc67"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udc69\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udc69\u200d\ud83d\udc67"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udc69\u200d\ud83d\udc66\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc67"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc68\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc68\u200d\ud83d\udc67"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc68\u200d\ud83d\udc67\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc68\u200d\ud83d\udc66\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc68\u200d\ud83d\udc67\u200d\ud83d\udc67"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0x100

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udc67"

    aput-object v4, v2, v3

    const/16 v3, 0x101

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0x102

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udc66\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0x103

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc67"

    aput-object v4, v2, v3

    const/16 v3, 0x104

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0x105

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc67"

    aput-object v4, v2, v3

    const/16 v3, 0x106

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc67\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0x107

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc66\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0x108

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc67\u200d\ud83d\udc67"

    aput-object v4, v2, v3

    const/16 v3, 0x109

    const-string/jumbo v4, "\ud83d\udc5a"

    aput-object v4, v2, v3

    const/16 v3, 0x10a

    const-string/jumbo v4, "\ud83d\udc55"

    aput-object v4, v2, v3

    const/16 v3, 0x10b

    const-string/jumbo v4, "\ud83d\udc56"

    aput-object v4, v2, v3

    const/16 v3, 0x10c

    const-string/jumbo v4, "\ud83d\udc54"

    aput-object v4, v2, v3

    const/16 v3, 0x10d

    const-string/jumbo v4, "\ud83d\udc57"

    aput-object v4, v2, v3

    const/16 v3, 0x10e

    const-string/jumbo v4, "\ud83d\udc59"

    aput-object v4, v2, v3

    const/16 v3, 0x10f

    const-string/jumbo v4, "\ud83d\udc58"

    aput-object v4, v2, v3

    const/16 v3, 0x110

    const-string/jumbo v4, "\ud83d\udc60"

    aput-object v4, v2, v3

    const/16 v3, 0x111

    const-string/jumbo v4, "\ud83d\udc61"

    aput-object v4, v2, v3

    const/16 v3, 0x112

    const-string/jumbo v4, "\ud83d\udc62"

    aput-object v4, v2, v3

    const/16 v3, 0x113

    const-string/jumbo v4, "\ud83d\udc5e"

    aput-object v4, v2, v3

    const/16 v3, 0x114

    const-string/jumbo v4, "\ud83d\udc5f"

    aput-object v4, v2, v3

    const/16 v3, 0x115

    const-string/jumbo v4, "\ud83d\udc52"

    aput-object v4, v2, v3

    const/16 v3, 0x116

    const-string/jumbo v4, "\ud83c\udfa9"

    aput-object v4, v2, v3

    const/16 v3, 0x117

    const-string/jumbo v4, "\ud83c\udf93"

    aput-object v4, v2, v3

    const/16 v3, 0x118

    const-string/jumbo v4, "\ud83d\udc51"

    aput-object v4, v2, v3

    const/16 v3, 0x119

    const-string/jumbo v4, "\u26d1"

    aput-object v4, v2, v3

    const/16 v3, 0x11a

    const-string/jumbo v4, "\ud83c\udf92"

    aput-object v4, v2, v3

    const/16 v3, 0x11b

    const-string/jumbo v4, "\ud83d\udc5d"

    aput-object v4, v2, v3

    const/16 v3, 0x11c

    const-string/jumbo v4, "\ud83d\udc5b"

    aput-object v4, v2, v3

    const/16 v3, 0x11d

    const-string/jumbo v4, "\ud83d\udc5c"

    aput-object v4, v2, v3

    const/16 v3, 0x11e

    const-string/jumbo v4, "\ud83d\udcbc"

    aput-object v4, v2, v3

    const/16 v3, 0x11f

    const-string/jumbo v4, "\ud83d\udc53"

    aput-object v4, v2, v3

    const/16 v3, 0x120

    const-string/jumbo v4, "\ud83d\udd76"

    aput-object v4, v2, v3

    const/16 v3, 0x121

    const-string/jumbo v4, "\ud83c\udf02"

    aput-object v4, v2, v3

    const/16 v3, 0x122

    const-string/jumbo v4, "\u2602"

    aput-object v4, v2, v3

    const/16 v3, 0x123

    const-string/jumbo v4, "\u2764"

    aput-object v4, v2, v3

    const/16 v3, 0x124

    const-string/jumbo v4, "\ud83d\udc9b"

    aput-object v4, v2, v3

    const/16 v3, 0x125

    const-string/jumbo v4, "\ud83d\udc9a"

    aput-object v4, v2, v3

    const/16 v3, 0x126

    const-string/jumbo v4, "\ud83d\udc99"

    aput-object v4, v2, v3

    const/16 v3, 0x127

    const-string/jumbo v4, "\ud83d\udc9c"

    aput-object v4, v2, v3

    const/16 v3, 0x128

    const-string/jumbo v4, "\ud83d\udda4"

    aput-object v4, v2, v3

    const/16 v3, 0x129

    const-string/jumbo v4, "\ud83d\udc94"

    aput-object v4, v2, v3

    const/16 v3, 0x12a

    const-string/jumbo v4, "\u2763"

    aput-object v4, v2, v3

    const/16 v3, 0x12b

    const-string/jumbo v4, "\ud83d\udc95"

    aput-object v4, v2, v3

    const/16 v3, 0x12c

    const-string/jumbo v4, "\ud83d\udc9e"

    aput-object v4, v2, v3

    const/16 v3, 0x12d

    const-string/jumbo v4, "\ud83d\udc93"

    aput-object v4, v2, v3

    const/16 v3, 0x12e

    const-string/jumbo v4, "\ud83d\udc97"

    aput-object v4, v2, v3

    const/16 v3, 0x12f

    const-string/jumbo v4, "\ud83d\udc96"

    aput-object v4, v2, v3

    const/16 v3, 0x130

    const-string/jumbo v4, "\ud83d\udc98"

    aput-object v4, v2, v3

    const/16 v3, 0x131

    const-string/jumbo v4, "\ud83d\udc9d"

    aput-object v4, v2, v3

    aput-object v2, v1, v7

    const/4 v2, 0x0

    aput-object v2, v1, v5

    const/16 v2, 0xa6

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "\ud83c\udf4f"

    aput-object v3, v2, v7

    const-string/jumbo v3, "\ud83c\udf4e"

    aput-object v3, v2, v5

    const-string/jumbo v3, "\ud83c\udf50"

    aput-object v3, v2, v8

    const-string/jumbo v3, "\ud83c\udf4a"

    aput-object v3, v2, v6

    const-string/jumbo v3, "\ud83c\udf4b"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "\ud83c\udf4c"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "\ud83c\udf49"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "\ud83c\udf47"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "\ud83c\udf53"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "\ud83c\udf48"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "\ud83c\udf52"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "\ud83c\udf51"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "\ud83c\udf4d"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "\ud83e\udd5d"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "\ud83e\udd51"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "\ud83c\udf45"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "\ud83c\udf46"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "\ud83e\udd52"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "\ud83e\udd55"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "\ud83c\udf3d"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "\ud83c\udf36"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "\ud83e\udd54"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "\ud83c\udf60"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "\ud83c\udf30"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "\ud83e\udd5c"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "\ud83c\udf6f"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "\ud83e\udd50"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "\ud83c\udf5e"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "\ud83e\udd56"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "\ud83e\uddc0"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "\ud83e\udd5a"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "\ud83c\udf73"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "\ud83e\udd53"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "\ud83e\udd5e"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "\ud83c\udf64"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "\ud83c\udf57"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "\ud83c\udf56"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "\ud83c\udf55"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "\ud83c\udf2d"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "\ud83c\udf54"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "\ud83c\udf5f"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "\ud83e\udd59"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "\ud83c\udf2e"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "\ud83c\udf2f"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "\ud83e\udd57"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "\ud83e\udd58"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "\ud83c\udf5d"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "\ud83c\udf5c"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "\ud83c\udf72"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "\ud83c\udf65"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "\ud83c\udf63"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "\ud83c\udf71"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "\ud83c\udf5b"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "\ud83c\udf59"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "\ud83c\udf5a"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "\ud83c\udf58"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "\ud83c\udf62"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "\ud83c\udf61"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "\ud83c\udf67"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "\ud83c\udf68"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "\ud83c\udf66"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "\ud83c\udf70"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "\ud83c\udf82"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "\ud83c\udf6e"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "\ud83c\udf6d"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "\ud83c\udf6c"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "\ud83c\udf6b"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "\ud83c\udf7f"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "\ud83c\udf69"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "\ud83c\udf6a"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "\ud83e\udd5b"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "\ud83c\udf7c"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "\u2615"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "\ud83c\udf75"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "\ud83c\udf76"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "\ud83c\udf7a"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "\ud83c\udf7b"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "\ud83e\udd42"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "\ud83c\udf77"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "\ud83e\udd43"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "\ud83c\udf78"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "\ud83c\udf79"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "\ud83c\udf7e"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "\ud83e\udd44"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "\ud83c\udf74"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "\ud83c\udf7d"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "\u26bd"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "\ud83c\udfc0"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "\ud83c\udfc8"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "\u26be"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "\ud83c\udfbe"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "\ud83c\udfd0"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "\ud83c\udfc9"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "\ud83c\udfb1"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "\ud83c\udfd3"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "\ud83c\udff8"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "\ud83e\udd45"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "\ud83c\udfd2"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "\ud83c\udfd1"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "\ud83c\udfcf"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "\u26f3"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "\ud83c\udff9"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "\ud83c\udfa3"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "\ud83e\udd4a"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "\ud83e\udd4b"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "\u26f8"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "\ud83c\udfbf"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "\u26f7"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "\ud83c\udfc2"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "\ud83c\udfcb\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "\ud83c\udfcb"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "\ud83e\udd3a"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "\ud83e\udd3c\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "\ud83e\udd3c\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "\ud83e\udd38\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "\ud83e\udd38\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "\u26f9\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "\u26f9"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "\ud83e\udd3e\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "\ud83e\udd3e\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "\ud83c\udfcc\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "\ud83c\udfcc"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "\ud83c\udfc4\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "\ud83c\udfc4"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "\ud83c\udfca\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "\ud83c\udfca"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "\ud83e\udd3d\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "\ud83e\udd3d\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "\ud83d\udea3\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "\ud83d\udea3"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "\ud83c\udfc7"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "\ud83d\udeb4\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "\ud83d\udeb4"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "\ud83d\udeb5\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "\ud83d\udeb5"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "\ud83c\udfbd"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "\ud83c\udfc5"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "\ud83c\udf96"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "\ud83e\udd47"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "\ud83e\udd48"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "\ud83e\udd49"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "\ud83c\udfc6"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "\ud83c\udff5"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "\ud83c\udf97"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "\ud83c\udfab"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "\ud83c\udf9f"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "\ud83c\udfaa"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "\ud83e\udd39\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "\ud83e\udd39\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "\ud83c\udfad"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "\ud83c\udfa8"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "\ud83c\udfac"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "\ud83c\udfa4"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "\ud83c\udfa7"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "\ud83c\udfbc"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "\ud83c\udfb9"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "\ud83e\udd41"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "\ud83c\udfb7"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "\ud83c\udfba"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "\ud83c\udfb8"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "\ud83c\udfbb"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "\ud83c\udfb2"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "\ud83c\udfaf"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "\ud83c\udfb3"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "\ud83c\udfae"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "\ud83c\udfb0"

    aput-object v4, v2, v3

    aput-object v2, v1, v8

    const/4 v2, 0x0

    aput-object v2, v1, v6

    const/16 v2, 0x1ad

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "\ud83d\udc9f"

    aput-object v3, v2, v7

    const-string/jumbo v3, "\u262e"

    aput-object v3, v2, v5

    const-string/jumbo v3, "\u271d"

    aput-object v3, v2, v8

    const-string/jumbo v3, "\u262a"

    aput-object v3, v2, v6

    const-string/jumbo v3, "\ud83d\udd49"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "\u2638"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "\u2721"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "\ud83d\udd2f"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "\ud83d\udd4e"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "\u262f"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "\u2626"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "\ud83d\uded0"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "\u26ce"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "\u2648"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "\u2649"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "\u264a"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "\u264b"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "\u264c"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "\u264d"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "\u264e"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "\u264f"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "\u2650"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "\u2651"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "\u2652"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "\u2653"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "\ud83c\udd94"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "\u269b"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "\ud83c\ude51"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "\u2622"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "\u2623"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "\ud83d\udcf4"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "\ud83d\udcf3"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "\ud83c\ude36"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "\ud83c\ude1a"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "\ud83c\ude38"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "\ud83c\ude3a"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "\ud83c\ude37"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "\u2734"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "\ud83c\udd9a"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "\ud83d\udcae"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "\ud83c\ude50"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "\u3299"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "\u3297"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "\ud83c\ude34"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "\ud83c\ude35"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "\ud83c\ude39"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "\ud83c\ude32"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "\ud83c\udd70"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "\ud83c\udd71"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "\ud83c\udd8e"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "\ud83c\udd91"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "\ud83c\udd7e"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "\ud83c\udd98"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "\u274c"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "\u2b55"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "\ud83d\uded1"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "\u26d4"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "\ud83d\udcdb"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "\ud83d\udeab"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "\ud83d\udcaf"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "\ud83d\udca2"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "\u2668"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "\ud83d\udeb7"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "\ud83d\udeaf"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "\ud83d\udeb3"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "\ud83d\udeb1"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "\ud83d\udd1e"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "\ud83d\udcf5"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "\ud83d\udead"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "\u2757"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "\u2755"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "\u2753"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "\u2754"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "\u203c"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "\u2049"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "\ud83d\udd05"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "\ud83d\udd06"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "\u303d"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "\u26a0"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "\ud83d\udeb8"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "\ud83d\udd31"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "\u269c"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "\ud83d\udd30"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "\u267b"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "\u2705"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "\ud83c\ude2f"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "\ud83d\udcb9"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "\u2747"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "\u2733"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "\u274e"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "\ud83c\udf10"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "\ud83d\udca0"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "\u24c2"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "\ud83c\udf00"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "\ud83d\udca4"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "\ud83c\udfe7"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "\ud83d\udebe"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "\u267f"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "\ud83c\udd7f"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "\ud83c\ude33"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "\ud83c\ude02"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "\ud83d\udec2"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "\ud83d\udec3"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "\ud83d\udec4"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "\ud83d\udec5"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "\ud83d\udeb9"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "\ud83d\udeba"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "\ud83d\udebc"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "\ud83d\udebb"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "\ud83d\udeae"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "\ud83c\udfa6"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "\ud83d\udcf6"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "\ud83c\ude01"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "\ud83d\udd23"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "\u2139"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "\ud83d\udd24"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "\ud83d\udd21"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "\ud83d\udd20"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "\ud83c\udd96"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "\ud83c\udd97"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "\ud83c\udd99"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "\ud83c\udd92"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "\ud83c\udd95"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "\ud83c\udd93"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "0\u20e3"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "1\u20e3"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "2\u20e3"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "3\u20e3"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "4\u20e3"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "5\u20e3"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "6\u20e3"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "7\u20e3"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "8\u20e3"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "9\u20e3"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "\ud83d\udd1f"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "\ud83d\udd22"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "#\u20e3"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "*\u20e3"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "\u25b6"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "\u23f8"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "\u23ef"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "\u23f9"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "\u23fa"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "\u23ed"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "\u23ee"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "\u23e9"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "\u23ea"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "\u23eb"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "\u23ec"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "\u25c0"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "\ud83d\udd3c"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "\ud83d\udd3d"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "\u27a1"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "\u2b05"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "\u2b06"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "\u2b07"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "\u2197"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "\u2198"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "\u2199"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "\u2196"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "\u2195"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "\u2194"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "\u21aa"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "\u21a9"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "\u2934"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "\u2935"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "\ud83d\udd00"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "\ud83d\udd01"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "\ud83d\udd02"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "\ud83d\udd04"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "\ud83d\udd03"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "\ud83c\udfb5"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "\ud83c\udfb6"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "\u2795"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "\u2796"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "\u2797"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "\u2716"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "\ud83d\udcb2"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "\ud83d\udcb1"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "\u2122"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "\u00a9"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "\u00ae"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "\u3030"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "\u27b0"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "\u27bf"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "\ud83d\udd1a"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "\ud83d\udd19"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "\ud83d\udd1b"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "\ud83d\udd1d"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "\ud83d\udd1c"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "\u2714"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "\u2611"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "\ud83d\udd18"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "\u26aa"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "\u26ab"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "\ud83d\udd34"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "\ud83d\udd35"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "\ud83d\udd3a"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "\ud83d\udd3b"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "\ud83d\udd38"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "\ud83d\udd39"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "\ud83d\udd36"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "\ud83d\udd37"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "\ud83d\udd33"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "\ud83d\udd32"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "\u25aa"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "\u25ab"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "\u25fe"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "\u25fd"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "\u25fc"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "\u25fb"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "\u2b1b"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "\u2b1c"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "\ud83d\udd08"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "\ud83d\udd07"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "\ud83d\udd09"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "\ud83d\udd0a"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "\ud83d\udd14"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "\ud83d\udd15"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "\ud83d\udce3"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "\ud83d\udce2"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "\ud83d\udc41\u200d\ud83d\udde8"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "\ud83d\udcac"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "\ud83d\udcad"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "\ud83d\uddef"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "\u2660"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "\u2663"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "\u2665"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "\u2666"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "\ud83c\udccf"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "\ud83c\udfb4"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "\ud83c\udc04"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "\ud83d\udd50"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "\ud83d\udd51"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "\ud83d\udd52"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "\ud83d\udd53"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "\ud83d\udd54"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "\ud83d\udd55"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "\ud83d\udd56"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "\ud83d\udd57"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "\ud83d\udd58"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "\ud83d\udd59"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "\ud83d\udd5a"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "\ud83d\udd5b"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "\ud83d\udd5c"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "\ud83d\udd5d"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "\ud83d\udd5e"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "\ud83d\udd5f"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "\ud83d\udd60"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "\ud83d\udd61"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "\ud83d\udd62"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "\ud83d\udd63"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "\ud83d\udd64"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "\ud83d\udd65"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "\ud83d\udd66"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "\ud83d\udd67"

    aput-object v4, v2, v3

    const/16 v3, 0x100

    const-string/jumbo v4, "\u231a"

    aput-object v4, v2, v3

    const/16 v3, 0x101

    const-string/jumbo v4, "\ud83d\udcf1"

    aput-object v4, v2, v3

    const/16 v3, 0x102

    const-string/jumbo v4, "\ud83d\udcf2"

    aput-object v4, v2, v3

    const/16 v3, 0x103

    const-string/jumbo v4, "\ud83d\udcbb"

    aput-object v4, v2, v3

    const/16 v3, 0x104

    const-string/jumbo v4, "\u2328"

    aput-object v4, v2, v3

    const/16 v3, 0x105

    const-string/jumbo v4, "\ud83d\udda5"

    aput-object v4, v2, v3

    const/16 v3, 0x106

    const-string/jumbo v4, "\ud83d\udda8"

    aput-object v4, v2, v3

    const/16 v3, 0x107

    const-string/jumbo v4, "\ud83d\uddb1"

    aput-object v4, v2, v3

    const/16 v3, 0x108

    const-string/jumbo v4, "\ud83d\uddb2"

    aput-object v4, v2, v3

    const/16 v3, 0x109

    const-string/jumbo v4, "\ud83d\udd79"

    aput-object v4, v2, v3

    const/16 v3, 0x10a

    const-string/jumbo v4, "\ud83d\udddc"

    aput-object v4, v2, v3

    const/16 v3, 0x10b

    const-string/jumbo v4, "\ud83d\udcbd"

    aput-object v4, v2, v3

    const/16 v3, 0x10c

    const-string/jumbo v4, "\ud83d\udcbe"

    aput-object v4, v2, v3

    const/16 v3, 0x10d

    const-string/jumbo v4, "\ud83d\udcbf"

    aput-object v4, v2, v3

    const/16 v3, 0x10e

    const-string/jumbo v4, "\ud83d\udcc0"

    aput-object v4, v2, v3

    const/16 v3, 0x10f

    const-string/jumbo v4, "\ud83d\udcfc"

    aput-object v4, v2, v3

    const/16 v3, 0x110

    const-string/jumbo v4, "\ud83d\udcf7"

    aput-object v4, v2, v3

    const/16 v3, 0x111

    const-string/jumbo v4, "\ud83d\udcf8"

    aput-object v4, v2, v3

    const/16 v3, 0x112

    const-string/jumbo v4, "\ud83d\udcf9"

    aput-object v4, v2, v3

    const/16 v3, 0x113

    const-string/jumbo v4, "\ud83c\udfa5"

    aput-object v4, v2, v3

    const/16 v3, 0x114

    const-string/jumbo v4, "\ud83d\udcfd"

    aput-object v4, v2, v3

    const/16 v3, 0x115

    const-string/jumbo v4, "\ud83c\udf9e"

    aput-object v4, v2, v3

    const/16 v3, 0x116

    const-string/jumbo v4, "\ud83d\udcde"

    aput-object v4, v2, v3

    const/16 v3, 0x117

    const-string/jumbo v4, "\u260e"

    aput-object v4, v2, v3

    const/16 v3, 0x118

    const-string/jumbo v4, "\ud83d\udcdf"

    aput-object v4, v2, v3

    const/16 v3, 0x119

    const-string/jumbo v4, "\ud83d\udce0"

    aput-object v4, v2, v3

    const/16 v3, 0x11a

    const-string/jumbo v4, "\ud83d\udcfa"

    aput-object v4, v2, v3

    const/16 v3, 0x11b

    const-string/jumbo v4, "\ud83d\udcfb"

    aput-object v4, v2, v3

    const/16 v3, 0x11c

    const-string/jumbo v4, "\ud83c\udf99"

    aput-object v4, v2, v3

    const/16 v3, 0x11d

    const-string/jumbo v4, "\ud83c\udf9a"

    aput-object v4, v2, v3

    const/16 v3, 0x11e

    const-string/jumbo v4, "\ud83c\udf9b"

    aput-object v4, v2, v3

    const/16 v3, 0x11f

    const-string/jumbo v4, "\u23f1"

    aput-object v4, v2, v3

    const/16 v3, 0x120

    const-string/jumbo v4, "\u23f2"

    aput-object v4, v2, v3

    const/16 v3, 0x121

    const-string/jumbo v4, "\u23f0"

    aput-object v4, v2, v3

    const/16 v3, 0x122

    const-string/jumbo v4, "\ud83d\udd70"

    aput-object v4, v2, v3

    const/16 v3, 0x123

    const-string/jumbo v4, "\u231b"

    aput-object v4, v2, v3

    const/16 v3, 0x124

    const-string/jumbo v4, "\u23f3"

    aput-object v4, v2, v3

    const/16 v3, 0x125

    const-string/jumbo v4, "\ud83d\udce1"

    aput-object v4, v2, v3

    const/16 v3, 0x126

    const-string/jumbo v4, "\ud83d\udd0b"

    aput-object v4, v2, v3

    const/16 v3, 0x127

    const-string/jumbo v4, "\ud83d\udd0c"

    aput-object v4, v2, v3

    const/16 v3, 0x128

    const-string/jumbo v4, "\ud83d\udca1"

    aput-object v4, v2, v3

    const/16 v3, 0x129

    const-string/jumbo v4, "\ud83d\udd26"

    aput-object v4, v2, v3

    const/16 v3, 0x12a

    const-string/jumbo v4, "\ud83d\udd6f"

    aput-object v4, v2, v3

    const/16 v3, 0x12b

    const-string/jumbo v4, "\ud83d\uddd1"

    aput-object v4, v2, v3

    const/16 v3, 0x12c

    const-string/jumbo v4, "\ud83d\udee2"

    aput-object v4, v2, v3

    const/16 v3, 0x12d

    const-string/jumbo v4, "\ud83d\udcb8"

    aput-object v4, v2, v3

    const/16 v3, 0x12e

    const-string/jumbo v4, "\ud83d\udcb5"

    aput-object v4, v2, v3

    const/16 v3, 0x12f

    const-string/jumbo v4, "\ud83d\udcb4"

    aput-object v4, v2, v3

    const/16 v3, 0x130

    const-string/jumbo v4, "\ud83d\udcb6"

    aput-object v4, v2, v3

    const/16 v3, 0x131

    const-string/jumbo v4, "\ud83d\udcb7"

    aput-object v4, v2, v3

    const/16 v3, 0x132

    const-string/jumbo v4, "\ud83d\udcb0"

    aput-object v4, v2, v3

    const/16 v3, 0x133

    const-string/jumbo v4, "\ud83d\udcb3"

    aput-object v4, v2, v3

    const/16 v3, 0x134

    const-string/jumbo v4, "\ud83d\udc8e"

    aput-object v4, v2, v3

    const/16 v3, 0x135

    const-string/jumbo v4, "\u2696"

    aput-object v4, v2, v3

    const/16 v3, 0x136

    const-string/jumbo v4, "\ud83d\udd27"

    aput-object v4, v2, v3

    const/16 v3, 0x137

    const-string/jumbo v4, "\ud83d\udd28"

    aput-object v4, v2, v3

    const/16 v3, 0x138

    const-string/jumbo v4, "\u2692"

    aput-object v4, v2, v3

    const/16 v3, 0x139

    const-string/jumbo v4, "\ud83d\udee0"

    aput-object v4, v2, v3

    const/16 v3, 0x13a

    const-string/jumbo v4, "\u26cf"

    aput-object v4, v2, v3

    const/16 v3, 0x13b

    const-string/jumbo v4, "\ud83d\udd29"

    aput-object v4, v2, v3

    const/16 v3, 0x13c

    const-string/jumbo v4, "\u2699"

    aput-object v4, v2, v3

    const/16 v3, 0x13d

    const-string/jumbo v4, "\u26d3"

    aput-object v4, v2, v3

    const/16 v3, 0x13e

    const-string/jumbo v4, "\ud83d\udd2b"

    aput-object v4, v2, v3

    const/16 v3, 0x13f

    const-string/jumbo v4, "\ud83d\udca3"

    aput-object v4, v2, v3

    const/16 v3, 0x140

    const-string/jumbo v4, "\ud83d\udd2a"

    aput-object v4, v2, v3

    const/16 v3, 0x141

    const-string/jumbo v4, "\ud83d\udde1"

    aput-object v4, v2, v3

    const/16 v3, 0x142

    const-string/jumbo v4, "\u2694"

    aput-object v4, v2, v3

    const/16 v3, 0x143

    const-string/jumbo v4, "\ud83d\udee1"

    aput-object v4, v2, v3

    const/16 v3, 0x144

    const-string/jumbo v4, "\ud83d\udeac"

    aput-object v4, v2, v3

    const/16 v3, 0x145

    const-string/jumbo v4, "\u26b0"

    aput-object v4, v2, v3

    const/16 v3, 0x146

    const-string/jumbo v4, "\u26b1"

    aput-object v4, v2, v3

    const/16 v3, 0x147

    const-string/jumbo v4, "\ud83c\udffa"

    aput-object v4, v2, v3

    const/16 v3, 0x148

    const-string/jumbo v4, "\ud83d\udd2e"

    aput-object v4, v2, v3

    const/16 v3, 0x149

    const-string/jumbo v4, "\ud83d\udcff"

    aput-object v4, v2, v3

    const/16 v3, 0x14a

    const-string/jumbo v4, "\ud83d\udc88"

    aput-object v4, v2, v3

    const/16 v3, 0x14b

    const-string/jumbo v4, "\u2697"

    aput-object v4, v2, v3

    const/16 v3, 0x14c

    const-string/jumbo v4, "\ud83d\udd2d"

    aput-object v4, v2, v3

    const/16 v3, 0x14d

    const-string/jumbo v4, "\ud83d\udd2c"

    aput-object v4, v2, v3

    const/16 v3, 0x14e

    const-string/jumbo v4, "\ud83d\udd73"

    aput-object v4, v2, v3

    const/16 v3, 0x14f

    const-string/jumbo v4, "\ud83d\udc8a"

    aput-object v4, v2, v3

    const/16 v3, 0x150

    const-string/jumbo v4, "\ud83d\udc89"

    aput-object v4, v2, v3

    const/16 v3, 0x151

    const-string/jumbo v4, "\ud83c\udf21"

    aput-object v4, v2, v3

    const/16 v3, 0x152

    const-string/jumbo v4, "\ud83d\udebd"

    aput-object v4, v2, v3

    const/16 v3, 0x153

    const-string/jumbo v4, "\ud83d\udeb0"

    aput-object v4, v2, v3

    const/16 v3, 0x154

    const-string/jumbo v4, "\ud83d\udebf"

    aput-object v4, v2, v3

    const/16 v3, 0x155

    const-string/jumbo v4, "\ud83d\udec1"

    aput-object v4, v2, v3

    const/16 v3, 0x156

    const-string/jumbo v4, "\ud83d\udec0"

    aput-object v4, v2, v3

    const/16 v3, 0x157

    const-string/jumbo v4, "\ud83d\udece"

    aput-object v4, v2, v3

    const/16 v3, 0x158

    const-string/jumbo v4, "\ud83d\udd11"

    aput-object v4, v2, v3

    const/16 v3, 0x159

    const-string/jumbo v4, "\ud83d\udddd"

    aput-object v4, v2, v3

    const/16 v3, 0x15a

    const-string/jumbo v4, "\ud83d\udeaa"

    aput-object v4, v2, v3

    const/16 v3, 0x15b

    const-string/jumbo v4, "\ud83d\udecb"

    aput-object v4, v2, v3

    const/16 v3, 0x15c

    const-string/jumbo v4, "\ud83d\udecf"

    aput-object v4, v2, v3

    const/16 v3, 0x15d

    const-string/jumbo v4, "\ud83d\udecc"

    aput-object v4, v2, v3

    const/16 v3, 0x15e

    const-string/jumbo v4, "\ud83d\uddbc"

    aput-object v4, v2, v3

    const/16 v3, 0x15f

    const-string/jumbo v4, "\ud83d\udecd"

    aput-object v4, v2, v3

    const/16 v3, 0x160

    const-string/jumbo v4, "\ud83d\uded2"

    aput-object v4, v2, v3

    const/16 v3, 0x161

    const-string/jumbo v4, "\ud83c\udf81"

    aput-object v4, v2, v3

    const/16 v3, 0x162

    const-string/jumbo v4, "\ud83c\udf88"

    aput-object v4, v2, v3

    const/16 v3, 0x163

    const-string/jumbo v4, "\ud83c\udf8f"

    aput-object v4, v2, v3

    const/16 v3, 0x164

    const-string/jumbo v4, "\ud83c\udf80"

    aput-object v4, v2, v3

    const/16 v3, 0x165

    const-string/jumbo v4, "\ud83c\udf8a"

    aput-object v4, v2, v3

    const/16 v3, 0x166

    const-string/jumbo v4, "\ud83c\udf89"

    aput-object v4, v2, v3

    const/16 v3, 0x167

    const-string/jumbo v4, "\ud83c\udf8e"

    aput-object v4, v2, v3

    const/16 v3, 0x168

    const-string/jumbo v4, "\ud83c\udfee"

    aput-object v4, v2, v3

    const/16 v3, 0x169

    const-string/jumbo v4, "\ud83c\udf90"

    aput-object v4, v2, v3

    const/16 v3, 0x16a

    const-string/jumbo v4, "\u2709"

    aput-object v4, v2, v3

    const/16 v3, 0x16b

    const-string/jumbo v4, "\ud83d\udce9"

    aput-object v4, v2, v3

    const/16 v3, 0x16c

    const-string/jumbo v4, "\ud83d\udce8"

    aput-object v4, v2, v3

    const/16 v3, 0x16d

    const-string/jumbo v4, "\ud83d\udce7"

    aput-object v4, v2, v3

    const/16 v3, 0x16e

    const-string/jumbo v4, "\ud83d\udc8c"

    aput-object v4, v2, v3

    const/16 v3, 0x16f

    const-string/jumbo v4, "\ud83d\udce5"

    aput-object v4, v2, v3

    const/16 v3, 0x170

    const-string/jumbo v4, "\ud83d\udce4"

    aput-object v4, v2, v3

    const/16 v3, 0x171

    const-string/jumbo v4, "\ud83d\udce6"

    aput-object v4, v2, v3

    const/16 v3, 0x172

    const-string/jumbo v4, "\ud83c\udff7"

    aput-object v4, v2, v3

    const/16 v3, 0x173

    const-string/jumbo v4, "\ud83d\udcea"

    aput-object v4, v2, v3

    const/16 v3, 0x174

    const-string/jumbo v4, "\ud83d\udceb"

    aput-object v4, v2, v3

    const/16 v3, 0x175

    const-string/jumbo v4, "\ud83d\udcec"

    aput-object v4, v2, v3

    const/16 v3, 0x176

    const-string/jumbo v4, "\ud83d\udced"

    aput-object v4, v2, v3

    const/16 v3, 0x177

    const-string/jumbo v4, "\ud83d\udcee"

    aput-object v4, v2, v3

    const/16 v3, 0x178

    const-string/jumbo v4, "\ud83d\udcef"

    aput-object v4, v2, v3

    const/16 v3, 0x179

    const-string/jumbo v4, "\ud83d\udcdc"

    aput-object v4, v2, v3

    const/16 v3, 0x17a

    const-string/jumbo v4, "\ud83d\udcc3"

    aput-object v4, v2, v3

    const/16 v3, 0x17b

    const-string/jumbo v4, "\ud83d\udcc4"

    aput-object v4, v2, v3

    const/16 v3, 0x17c

    const-string/jumbo v4, "\ud83d\udcd1"

    aput-object v4, v2, v3

    const/16 v3, 0x17d

    const-string/jumbo v4, "\ud83d\udcca"

    aput-object v4, v2, v3

    const/16 v3, 0x17e

    const-string/jumbo v4, "\ud83d\udcc8"

    aput-object v4, v2, v3

    const/16 v3, 0x17f

    const-string/jumbo v4, "\ud83d\udcc9"

    aput-object v4, v2, v3

    const/16 v3, 0x180

    const-string/jumbo v4, "\ud83d\uddd2"

    aput-object v4, v2, v3

    const/16 v3, 0x181

    const-string/jumbo v4, "\ud83d\uddd3"

    aput-object v4, v2, v3

    const/16 v3, 0x182

    const-string/jumbo v4, "\ud83d\udcc6"

    aput-object v4, v2, v3

    const/16 v3, 0x183

    const-string/jumbo v4, "\ud83d\udcc5"

    aput-object v4, v2, v3

    const/16 v3, 0x184

    const-string/jumbo v4, "\ud83d\udcc7"

    aput-object v4, v2, v3

    const/16 v3, 0x185

    const-string/jumbo v4, "\ud83d\uddc3"

    aput-object v4, v2, v3

    const/16 v3, 0x186

    const-string/jumbo v4, "\ud83d\uddf3"

    aput-object v4, v2, v3

    const/16 v3, 0x187

    const-string/jumbo v4, "\ud83d\uddc4"

    aput-object v4, v2, v3

    const/16 v3, 0x188

    const-string/jumbo v4, "\ud83d\udccb"

    aput-object v4, v2, v3

    const/16 v3, 0x189

    const-string/jumbo v4, "\ud83d\udcc1"

    aput-object v4, v2, v3

    const/16 v3, 0x18a

    const-string/jumbo v4, "\ud83d\udcc2"

    aput-object v4, v2, v3

    const/16 v3, 0x18b

    const-string/jumbo v4, "\ud83d\uddc2"

    aput-object v4, v2, v3

    const/16 v3, 0x18c

    const-string/jumbo v4, "\ud83d\uddde"

    aput-object v4, v2, v3

    const/16 v3, 0x18d

    const-string/jumbo v4, "\ud83d\udcf0"

    aput-object v4, v2, v3

    const/16 v3, 0x18e

    const-string/jumbo v4, "\ud83d\udcd3"

    aput-object v4, v2, v3

    const/16 v3, 0x18f

    const-string/jumbo v4, "\ud83d\udcd4"

    aput-object v4, v2, v3

    const/16 v3, 0x190

    const-string/jumbo v4, "\ud83d\udcd2"

    aput-object v4, v2, v3

    const/16 v3, 0x191

    const-string/jumbo v4, "\ud83d\udcd5"

    aput-object v4, v2, v3

    const/16 v3, 0x192

    const-string/jumbo v4, "\ud83d\udcd7"

    aput-object v4, v2, v3

    const/16 v3, 0x193

    const-string/jumbo v4, "\ud83d\udcd8"

    aput-object v4, v2, v3

    const/16 v3, 0x194

    const-string/jumbo v4, "\ud83d\udcd9"

    aput-object v4, v2, v3

    const/16 v3, 0x195

    const-string/jumbo v4, "\ud83d\udcda"

    aput-object v4, v2, v3

    const/16 v3, 0x196

    const-string/jumbo v4, "\ud83d\udcd6"

    aput-object v4, v2, v3

    const/16 v3, 0x197

    const-string/jumbo v4, "\ud83d\udd16"

    aput-object v4, v2, v3

    const/16 v3, 0x198

    const-string/jumbo v4, "\ud83d\udd17"

    aput-object v4, v2, v3

    const/16 v3, 0x199

    const-string/jumbo v4, "\ud83d\udcce"

    aput-object v4, v2, v3

    const/16 v3, 0x19a

    const-string/jumbo v4, "\ud83d\udd87"

    aput-object v4, v2, v3

    const/16 v3, 0x19b

    const-string/jumbo v4, "\ud83d\udcd0"

    aput-object v4, v2, v3

    const/16 v3, 0x19c

    const-string/jumbo v4, "\ud83d\udccf"

    aput-object v4, v2, v3

    const/16 v3, 0x19d

    const-string/jumbo v4, "\ud83d\udccc"

    aput-object v4, v2, v3

    const/16 v3, 0x19e

    const-string/jumbo v4, "\ud83d\udccd"

    aput-object v4, v2, v3

    const/16 v3, 0x19f

    const-string/jumbo v4, "\u2702"

    aput-object v4, v2, v3

    const/16 v3, 0x1a0

    const-string/jumbo v4, "\ud83d\udd8a"

    aput-object v4, v2, v3

    const/16 v3, 0x1a1

    const-string/jumbo v4, "\ud83d\udd8b"

    aput-object v4, v2, v3

    const/16 v3, 0x1a2

    const-string/jumbo v4, "\u2712"

    aput-object v4, v2, v3

    const/16 v3, 0x1a3

    const-string/jumbo v4, "\ud83d\udd8c"

    aput-object v4, v2, v3

    const/16 v3, 0x1a4

    const-string/jumbo v4, "\ud83d\udd8d"

    aput-object v4, v2, v3

    const/16 v3, 0x1a5

    const-string/jumbo v4, "\ud83d\udcdd"

    aput-object v4, v2, v3

    const/16 v3, 0x1a6

    const-string/jumbo v4, "\u270f"

    aput-object v4, v2, v3

    const/16 v3, 0x1a7

    const-string/jumbo v4, "\ud83d\udd0d"

    aput-object v4, v2, v3

    const/16 v3, 0x1a8

    const-string/jumbo v4, "\ud83d\udd0e"

    aput-object v4, v2, v3

    const/16 v3, 0x1a9

    const-string/jumbo v4, "\ud83d\udd0f"

    aput-object v4, v2, v3

    const/16 v3, 0x1aa

    const-string/jumbo v4, "\ud83d\udd10"

    aput-object v4, v2, v3

    const/16 v3, 0x1ab

    const-string/jumbo v4, "\ud83d\udd12"

    aput-object v4, v2, v3

    const/16 v3, 0x1ac

    const-string/jumbo v4, "\ud83d\udd13"

    aput-object v4, v2, v3

    aput-object v2, v1, v9

    sput-object v1, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    .line 236
    const/4 v1, 0x5

    new-array v1, v1, [[Ljava/lang/String;

    const/16 v2, 0x38f

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "\ud83d\ude00"

    aput-object v3, v2, v7

    const-string/jumbo v3, "\ud83d\ude03"

    aput-object v3, v2, v5

    const-string/jumbo v3, "\ud83d\ude04"

    aput-object v3, v2, v8

    const-string/jumbo v3, "\ud83d\ude01"

    aput-object v3, v2, v6

    const-string/jumbo v3, "\ud83d\ude06"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "\ud83d\ude05"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "\ud83d\ude02"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "\ud83e\udd23"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "\u263a"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "\ud83d\ude0a"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "\ud83d\ude07"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "\ud83d\ude42"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "\ud83d\ude43"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "\ud83d\ude09"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "\ud83d\ude0c"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "\ud83d\ude0d"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "\ud83d\ude18"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "\ud83d\ude17"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "\ud83d\ude19"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "\ud83d\ude1a"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "\ud83d\ude0b"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "\ud83d\ude1c"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "\ud83d\ude1d"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "\ud83d\ude1b"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "\ud83e\udd11"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "\ud83e\udd17"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "\ud83e\udd13"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "\ud83d\ude0e"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "\ud83e\udd21"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "\ud83e\udd20"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "\ud83d\ude0f"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "\ud83d\ude12"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "\ud83d\ude1e"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "\ud83d\ude14"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "\ud83d\ude1f"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "\ud83d\ude15"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "\ud83d\ude41"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "\u2639"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "\ud83d\ude23"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "\ud83d\ude16"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "\ud83d\ude2b"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "\ud83d\ude29"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "\ud83d\ude24"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "\ud83d\ude20"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "\ud83d\ude21"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "\ud83d\ude36"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "\ud83d\ude10"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "\ud83d\ude11"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "\ud83d\ude2f"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "\ud83d\ude26"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "\ud83d\ude27"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "\ud83d\ude2e"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "\ud83d\ude32"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "\ud83d\ude35"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "\ud83d\ude33"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "\ud83d\ude31"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "\ud83d\ude28"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "\ud83d\ude30"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "\ud83d\ude22"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "\ud83d\ude25"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "\ud83e\udd24"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "\ud83d\ude2d"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "\ud83d\ude13"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "\ud83d\ude2a"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "\ud83d\ude34"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "\ud83d\ude44"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "\ud83e\udd14"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "\ud83e\udd25"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "\ud83d\ude2c"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "\ud83e\udd10"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "\ud83e\udd22"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "\ud83e\udd27"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "\ud83d\ude37"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "\ud83e\udd12"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "\ud83e\udd15"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "\ud83d\ude08"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "\ud83d\udc7f"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "\ud83d\udc79"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "\ud83d\udc7a"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "\ud83d\udca9"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "\ud83d\udc7b"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "\ud83d\udc80"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "\u2620"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "\ud83d\udc7d"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "\ud83d\udc7e"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "\ud83e\udd16"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "\ud83c\udf83"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "\ud83d\ude3a"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "\ud83d\ude38"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "\ud83d\ude39"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "\ud83d\ude3b"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "\ud83d\ude3c"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "\ud83d\ude3d"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "\ud83d\ude40"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "\ud83d\ude3f"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "\ud83d\ude3e"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "\ud83d\udc50"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "\ud83d\udc50\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "\ud83d\udc50\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "\ud83d\udc50\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "\ud83d\udc50\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "\ud83d\udc50\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "\ud83d\ude4c"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "\ud83d\ude4c\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "\ud83d\ude4c\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "\ud83d\ude4c\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "\ud83d\ude4c\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "\ud83d\ude4c\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "\ud83d\udc4f"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "\ud83d\udc4f\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "\ud83d\udc4f\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "\ud83d\udc4f\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "\ud83d\udc4f\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "\ud83d\udc4f\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "\ud83d\ude4f"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "\ud83d\ude4f\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "\ud83d\ude4f\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "\ud83d\ude4f\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "\ud83d\ude4f\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "\ud83d\ude4f\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "\ud83e\udd1d"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "\ud83d\udc4d"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "\ud83d\udc4d\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "\ud83d\udc4d\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "\ud83d\udc4d\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "\ud83d\udc4d\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "\ud83d\udc4d\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "\ud83d\udc4e"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "\ud83d\udc4e\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "\ud83d\udc4e\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "\ud83d\udc4e\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "\ud83d\udc4e\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "\ud83d\udc4e\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "\ud83d\udc4a"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "\ud83d\udc4a\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "\ud83d\udc4a\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "\ud83d\udc4a\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "\ud83d\udc4a\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "\ud83d\udc4a\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "\u270a"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "\u270a\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "\u270a\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "\u270a\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "\u270a\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "\u270a\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "\ud83e\udd1b"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "\ud83e\udd1b\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "\ud83e\udd1b\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "\ud83e\udd1b\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "\ud83e\udd1b\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "\ud83e\udd1b\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "\ud83e\udd1c"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "\ud83e\udd1c\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "\ud83e\udd1c\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "\ud83e\udd1c\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "\ud83e\udd1c\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "\ud83e\udd1c\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "\ud83e\udd1e"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "\ud83e\udd1e\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "\ud83e\udd1e\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "\ud83e\udd1e\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "\ud83e\udd1e\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "\ud83e\udd1e\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "\u270c"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "\u270c\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "\u270c\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "\u270c\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "\u270c\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "\u270c\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "\ud83e\udd18"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "\ud83e\udd18\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "\ud83e\udd18\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "\ud83e\udd18\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "\ud83e\udd18\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "\ud83e\udd18\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "\ud83d\udc4c"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "\ud83d\udc4c\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "\ud83d\udc4c\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "\ud83d\udc4c\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "\ud83d\udc4c\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "\ud83d\udc4c\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "\ud83d\udc48"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "\ud83d\udc48\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "\ud83d\udc48\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "\ud83d\udc48\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "\ud83d\udc48\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "\ud83d\udc48\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "\ud83d\udc49"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "\ud83d\udc49\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "\ud83d\udc49\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "\ud83d\udc49\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "\ud83d\udc49\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "\ud83d\udc49\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "\ud83d\udc46"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "\ud83d\udc46\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "\ud83d\udc46\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "\ud83d\udc46\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "\ud83d\udc46\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "\ud83d\udc46\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "\ud83d\udc47"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "\ud83d\udc47\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "\ud83d\udc47\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "\ud83d\udc47\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "\ud83d\udc47\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "\ud83d\udc47\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "\u261d"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "\u261d\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "\u261d\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "\u261d\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "\u261d\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "\u261d\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "\u270b"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "\u270b\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "\u270b\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "\u270b\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "\u270b\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "\u270b\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "\ud83e\udd1a"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "\ud83e\udd1a\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "\ud83e\udd1a\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "\ud83e\udd1a\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "\ud83e\udd1a\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "\ud83e\udd1a\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "\ud83d\udd90"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "\ud83d\udd90\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "\ud83d\udd90\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "\ud83d\udd90\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "\ud83d\udd90\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "\ud83d\udd90\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "\ud83d\udd96"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "\ud83d\udd96\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "\ud83d\udd96\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "\ud83d\udd96\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "\ud83d\udd96\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "\ud83d\udd96\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "\ud83d\udc4b"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "\ud83d\udc4b\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "\ud83d\udc4b\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "\ud83d\udc4b\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "\ud83d\udc4b\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "\ud83d\udc4b\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "\ud83e\udd19"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "\ud83e\udd19\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "\ud83e\udd19\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "\ud83e\udd19\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "\ud83e\udd19\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "\ud83e\udd19\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "\ud83d\udcaa"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "\ud83d\udcaa\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "\ud83d\udcaa\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "\ud83d\udcaa\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "\ud83d\udcaa\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "\ud83d\udcaa\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "\ud83d\udd95"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "\ud83d\udd95\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "\ud83d\udd95\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x100

    const-string/jumbo v4, "\ud83d\udd95\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x101

    const-string/jumbo v4, "\ud83d\udd95\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x102

    const-string/jumbo v4, "\ud83d\udd95\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x103

    const-string/jumbo v4, "\u270d"

    aput-object v4, v2, v3

    const/16 v3, 0x104

    const-string/jumbo v4, "\u270d\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x105

    const-string/jumbo v4, "\u270d\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x106

    const-string/jumbo v4, "\u270d\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x107

    const-string/jumbo v4, "\u270d\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x108

    const-string/jumbo v4, "\u270d\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x109

    const-string/jumbo v4, "\ud83e\udd33"

    aput-object v4, v2, v3

    const/16 v3, 0x10a

    const-string/jumbo v4, "\ud83e\udd33\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x10b

    const-string/jumbo v4, "\ud83e\udd33\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x10c

    const-string/jumbo v4, "\ud83e\udd33\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x10d

    const-string/jumbo v4, "\ud83e\udd33\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x10e

    const-string/jumbo v4, "\ud83e\udd33\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x10f

    const-string/jumbo v4, "\ud83d\udc85"

    aput-object v4, v2, v3

    const/16 v3, 0x110

    const-string/jumbo v4, "\ud83d\udc85\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x111

    const-string/jumbo v4, "\ud83d\udc85\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x112

    const-string/jumbo v4, "\ud83d\udc85\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x113

    const-string/jumbo v4, "\ud83d\udc85\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x114

    const-string/jumbo v4, "\ud83d\udc85\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x115

    const-string/jumbo v4, "\ud83d\udc8d"

    aput-object v4, v2, v3

    const/16 v3, 0x116

    const-string/jumbo v4, "\ud83d\udc84"

    aput-object v4, v2, v3

    const/16 v3, 0x117

    const-string/jumbo v4, "\ud83d\udc8b"

    aput-object v4, v2, v3

    const/16 v3, 0x118

    const-string/jumbo v4, "\ud83d\udc44"

    aput-object v4, v2, v3

    const/16 v3, 0x119

    const-string/jumbo v4, "\ud83d\udc45"

    aput-object v4, v2, v3

    const/16 v3, 0x11a

    const-string/jumbo v4, "\ud83d\udc42"

    aput-object v4, v2, v3

    const/16 v3, 0x11b

    const-string/jumbo v4, "\ud83d\udc42\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x11c

    const-string/jumbo v4, "\ud83d\udc42\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x11d

    const-string/jumbo v4, "\ud83d\udc42\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x11e

    const-string/jumbo v4, "\ud83d\udc42\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x11f

    const-string/jumbo v4, "\ud83d\udc42\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x120

    const-string/jumbo v4, "\ud83d\udc43"

    aput-object v4, v2, v3

    const/16 v3, 0x121

    const-string/jumbo v4, "\ud83d\udc43\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x122

    const-string/jumbo v4, "\ud83d\udc43\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x123

    const-string/jumbo v4, "\ud83d\udc43\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x124

    const-string/jumbo v4, "\ud83d\udc43\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x125

    const-string/jumbo v4, "\ud83d\udc43\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x126

    const-string/jumbo v4, "\ud83d\udc63"

    aput-object v4, v2, v3

    const/16 v3, 0x127

    const-string/jumbo v4, "\ud83d\udc41"

    aput-object v4, v2, v3

    const/16 v3, 0x128

    const-string/jumbo v4, "\ud83d\udc40"

    aput-object v4, v2, v3

    const/16 v3, 0x129

    const-string/jumbo v4, "\ud83d\udde3"

    aput-object v4, v2, v3

    const/16 v3, 0x12a

    const-string/jumbo v4, "\ud83d\udc64"

    aput-object v4, v2, v3

    const/16 v3, 0x12b

    const-string/jumbo v4, "\ud83d\udc65"

    aput-object v4, v2, v3

    const/16 v3, 0x12c

    const-string/jumbo v4, "\ud83d\udc76"

    aput-object v4, v2, v3

    const/16 v3, 0x12d

    const-string/jumbo v4, "\ud83d\udc76\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x12e

    const-string/jumbo v4, "\ud83d\udc76\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x12f

    const-string/jumbo v4, "\ud83d\udc76\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x130

    const-string/jumbo v4, "\ud83d\udc76\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x131

    const-string/jumbo v4, "\ud83d\udc76\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x132

    const-string/jumbo v4, "\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0x133

    const-string/jumbo v4, "\ud83d\udc66\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x134

    const-string/jumbo v4, "\ud83d\udc66\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x135

    const-string/jumbo v4, "\ud83d\udc66\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x136

    const-string/jumbo v4, "\ud83d\udc66\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x137

    const-string/jumbo v4, "\ud83d\udc66\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x138

    const-string/jumbo v4, "\ud83d\udc67"

    aput-object v4, v2, v3

    const/16 v3, 0x139

    const-string/jumbo v4, "\ud83d\udc67\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x13a

    const-string/jumbo v4, "\ud83d\udc67\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x13b

    const-string/jumbo v4, "\ud83d\udc67\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x13c

    const-string/jumbo v4, "\ud83d\udc67\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x13d

    const-string/jumbo v4, "\ud83d\udc67\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x13e

    const-string/jumbo v4, "\ud83d\udc68"

    aput-object v4, v2, v3

    const/16 v3, 0x13f

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x140

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x141

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x142

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x143

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x144

    const-string/jumbo v4, "\ud83d\udc69"

    aput-object v4, v2, v3

    const/16 v3, 0x145

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x146

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x147

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x148

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x149

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x14a

    const-string/jumbo v4, "\ud83d\udc71\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x14b

    const-string/jumbo v4, "\ud83d\udc71\ud83c\udffb\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x14c

    const-string/jumbo v4, "\ud83d\udc71\ud83c\udffc\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x14d

    const-string/jumbo v4, "\ud83d\udc71\ud83c\udffd\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x14e

    const-string/jumbo v4, "\ud83d\udc71\ud83c\udffe\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x14f

    const-string/jumbo v4, "\ud83d\udc71\ud83c\udfff\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x150

    const-string/jumbo v4, "\ud83d\udc71"

    aput-object v4, v2, v3

    const/16 v3, 0x151

    const-string/jumbo v4, "\ud83d\udc71\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x152

    const-string/jumbo v4, "\ud83d\udc71\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x153

    const-string/jumbo v4, "\ud83d\udc71\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x154

    const-string/jumbo v4, "\ud83d\udc71\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x155

    const-string/jumbo v4, "\ud83d\udc71\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x156

    const-string/jumbo v4, "\ud83d\udc74"

    aput-object v4, v2, v3

    const/16 v3, 0x157

    const-string/jumbo v4, "\ud83d\udc74\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x158

    const-string/jumbo v4, "\ud83d\udc74\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x159

    const-string/jumbo v4, "\ud83d\udc74\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x15a

    const-string/jumbo v4, "\ud83d\udc74\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x15b

    const-string/jumbo v4, "\ud83d\udc74\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x15c

    const-string/jumbo v4, "\ud83d\udc75"

    aput-object v4, v2, v3

    const/16 v3, 0x15d

    const-string/jumbo v4, "\ud83d\udc75\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x15e

    const-string/jumbo v4, "\ud83d\udc75\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x15f

    const-string/jumbo v4, "\ud83d\udc75\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x160

    const-string/jumbo v4, "\ud83d\udc75\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x161

    const-string/jumbo v4, "\ud83d\udc75\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x162

    const-string/jumbo v4, "\ud83d\udc72"

    aput-object v4, v2, v3

    const/16 v3, 0x163

    const-string/jumbo v4, "\ud83d\udc72\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x164

    const-string/jumbo v4, "\ud83d\udc72\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x165

    const-string/jumbo v4, "\ud83d\udc72\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x166

    const-string/jumbo v4, "\ud83d\udc72\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x167

    const-string/jumbo v4, "\ud83d\udc72\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x168

    const-string/jumbo v4, "\ud83d\udc73\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x169

    const-string/jumbo v4, "\ud83d\udc73\ud83c\udffb\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x16a

    const-string/jumbo v4, "\ud83d\udc73\ud83c\udffc\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x16b

    const-string/jumbo v4, "\ud83d\udc73\ud83c\udffd\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x16c

    const-string/jumbo v4, "\ud83d\udc73\ud83c\udffe\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x16d

    const-string/jumbo v4, "\ud83d\udc73\ud83c\udfff\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x16e

    const-string/jumbo v4, "\ud83d\udc73"

    aput-object v4, v2, v3

    const/16 v3, 0x16f

    const-string/jumbo v4, "\ud83d\udc73\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x170

    const-string/jumbo v4, "\ud83d\udc73\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x171

    const-string/jumbo v4, "\ud83d\udc73\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x172

    const-string/jumbo v4, "\ud83d\udc73\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x173

    const-string/jumbo v4, "\ud83d\udc73\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x174

    const-string/jumbo v4, "\ud83d\udc6e\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x175

    const-string/jumbo v4, "\ud83d\udc6e\ud83c\udffb\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x176

    const-string/jumbo v4, "\ud83d\udc6e\ud83c\udffc\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x177

    const-string/jumbo v4, "\ud83d\udc6e\ud83c\udffd\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x178

    const-string/jumbo v4, "\ud83d\udc6e\ud83c\udffe\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x179

    const-string/jumbo v4, "\ud83d\udc6e\ud83c\udfff\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x17a

    const-string/jumbo v4, "\ud83d\udc6e"

    aput-object v4, v2, v3

    const/16 v3, 0x17b

    const-string/jumbo v4, "\ud83d\udc6e\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x17c

    const-string/jumbo v4, "\ud83d\udc6e\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x17d

    const-string/jumbo v4, "\ud83d\udc6e\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x17e

    const-string/jumbo v4, "\ud83d\udc6e\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x17f

    const-string/jumbo v4, "\ud83d\udc6e\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x180

    const-string/jumbo v4, "\ud83d\udc77\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x181

    const-string/jumbo v4, "\ud83d\udc77\ud83c\udffb\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x182

    const-string/jumbo v4, "\ud83d\udc77\ud83c\udffc\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x183

    const-string/jumbo v4, "\ud83d\udc77\ud83c\udffd\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x184

    const-string/jumbo v4, "\ud83d\udc77\ud83c\udffe\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x185

    const-string/jumbo v4, "\ud83d\udc77\ud83c\udfff\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x186

    const-string/jumbo v4, "\ud83d\udc77"

    aput-object v4, v2, v3

    const/16 v3, 0x187

    const-string/jumbo v4, "\ud83d\udc77\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x188

    const-string/jumbo v4, "\ud83d\udc77\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x189

    const-string/jumbo v4, "\ud83d\udc77\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x18a

    const-string/jumbo v4, "\ud83d\udc77\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x18b

    const-string/jumbo v4, "\ud83d\udc77\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x18c

    const-string/jumbo v4, "\ud83d\udc82\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x18d

    const-string/jumbo v4, "\ud83d\udc82\ud83c\udffb\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x18e

    const-string/jumbo v4, "\ud83d\udc82\ud83c\udffc\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x18f

    const-string/jumbo v4, "\ud83d\udc82\ud83c\udffd\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x190

    const-string/jumbo v4, "\ud83d\udc82\ud83c\udffe\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x191

    const-string/jumbo v4, "\ud83d\udc82\ud83c\udfff\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x192

    const-string/jumbo v4, "\ud83d\udc82"

    aput-object v4, v2, v3

    const/16 v3, 0x193

    const-string/jumbo v4, "\ud83d\udc82\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x194

    const-string/jumbo v4, "\ud83d\udc82\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x195

    const-string/jumbo v4, "\ud83d\udc82\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x196

    const-string/jumbo v4, "\ud83d\udc82\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x197

    const-string/jumbo v4, "\ud83d\udc82\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x198

    const-string/jumbo v4, "\ud83d\udd75\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x199

    const-string/jumbo v4, "\ud83d\udd75\ud83c\udffb\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x19a

    const-string/jumbo v4, "\ud83d\udd75\ud83c\udffc\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x19b

    const-string/jumbo v4, "\ud83d\udd75\ud83c\udffd\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x19c

    const-string/jumbo v4, "\ud83d\udd75\ud83c\udffe\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x19d

    const-string/jumbo v4, "\ud83d\udd75\ud83c\udfff\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x19e

    const-string/jumbo v4, "\ud83d\udd75"

    aput-object v4, v2, v3

    const/16 v3, 0x19f

    const-string/jumbo v4, "\ud83d\udd75\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x1a0

    const-string/jumbo v4, "\ud83d\udd75\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x1a1

    const-string/jumbo v4, "\ud83d\udd75\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x1a2

    const-string/jumbo v4, "\ud83d\udd75\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x1a3

    const-string/jumbo v4, "\ud83d\udd75\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x1a4

    const-string/jumbo v4, "\ud83d\udc69\u200d\u2695"

    aput-object v4, v2, v3

    const/16 v3, 0x1a5

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffb\u200d\u2695"

    aput-object v4, v2, v3

    const/16 v3, 0x1a6

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffc\u200d\u2695"

    aput-object v4, v2, v3

    const/16 v3, 0x1a7

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffd\u200d\u2695"

    aput-object v4, v2, v3

    const/16 v3, 0x1a8

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffe\u200d\u2695"

    aput-object v4, v2, v3

    const/16 v3, 0x1a9

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udfff\u200d\u2695"

    aput-object v4, v2, v3

    const/16 v3, 0x1aa

    const-string/jumbo v4, "\ud83d\udc68\u200d\u2695"

    aput-object v4, v2, v3

    const/16 v3, 0x1ab

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffb\u200d\u2695"

    aput-object v4, v2, v3

    const/16 v3, 0x1ac

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffc\u200d\u2695"

    aput-object v4, v2, v3

    const/16 v3, 0x1ad

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffd\u200d\u2695"

    aput-object v4, v2, v3

    const/16 v3, 0x1ae

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffe\u200d\u2695"

    aput-object v4, v2, v3

    const/16 v3, 0x1af

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udfff\u200d\u2695"

    aput-object v4, v2, v3

    const/16 v3, 0x1b0

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83c\udf3e"

    aput-object v4, v2, v3

    const/16 v3, 0x1b1

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffb\u200d\ud83c\udf3e"

    aput-object v4, v2, v3

    const/16 v3, 0x1b2

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffc\u200d\ud83c\udf3e"

    aput-object v4, v2, v3

    const/16 v3, 0x1b3

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffd\u200d\ud83c\udf3e"

    aput-object v4, v2, v3

    const/16 v3, 0x1b4

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffe\u200d\ud83c\udf3e"

    aput-object v4, v2, v3

    const/16 v3, 0x1b5

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udfff\u200d\ud83c\udf3e"

    aput-object v4, v2, v3

    const/16 v3, 0x1b6

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83c\udf3e"

    aput-object v4, v2, v3

    const/16 v3, 0x1b7

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf3e"

    aput-object v4, v2, v3

    const/16 v3, 0x1b8

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffc\u200d\ud83c\udf3e"

    aput-object v4, v2, v3

    const/16 v3, 0x1b9

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffd\u200d\ud83c\udf3e"

    aput-object v4, v2, v3

    const/16 v3, 0x1ba

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffe\u200d\ud83c\udf3e"

    aput-object v4, v2, v3

    const/16 v3, 0x1bb

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udfff\u200d\ud83c\udf3e"

    aput-object v4, v2, v3

    const/16 v3, 0x1bc

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83c\udf73"

    aput-object v4, v2, v3

    const/16 v3, 0x1bd

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffb\u200d\ud83c\udf73"

    aput-object v4, v2, v3

    const/16 v3, 0x1be

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffc\u200d\ud83c\udf73"

    aput-object v4, v2, v3

    const/16 v3, 0x1bf

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffd\u200d\ud83c\udf73"

    aput-object v4, v2, v3

    const/16 v3, 0x1c0

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffe\u200d\ud83c\udf73"

    aput-object v4, v2, v3

    const/16 v3, 0x1c1

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udfff\u200d\ud83c\udf73"

    aput-object v4, v2, v3

    const/16 v3, 0x1c2

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83c\udf73"

    aput-object v4, v2, v3

    const/16 v3, 0x1c3

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf73"

    aput-object v4, v2, v3

    const/16 v3, 0x1c4

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffc\u200d\ud83c\udf73"

    aput-object v4, v2, v3

    const/16 v3, 0x1c5

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffd\u200d\ud83c\udf73"

    aput-object v4, v2, v3

    const/16 v3, 0x1c6

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffe\u200d\ud83c\udf73"

    aput-object v4, v2, v3

    const/16 v3, 0x1c7

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udfff\u200d\ud83c\udf73"

    aput-object v4, v2, v3

    const/16 v3, 0x1c8

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83c\udf93"

    aput-object v4, v2, v3

    const/16 v3, 0x1c9

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffb\u200d\ud83c\udf93"

    aput-object v4, v2, v3

    const/16 v3, 0x1ca

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffc\u200d\ud83c\udf93"

    aput-object v4, v2, v3

    const/16 v3, 0x1cb

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffd\u200d\ud83c\udf93"

    aput-object v4, v2, v3

    const/16 v3, 0x1cc

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffe\u200d\ud83c\udf93"

    aput-object v4, v2, v3

    const/16 v3, 0x1cd

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udfff\u200d\ud83c\udf93"

    aput-object v4, v2, v3

    const/16 v3, 0x1ce

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83c\udf93"

    aput-object v4, v2, v3

    const/16 v3, 0x1cf

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffb\u200d\ud83c\udf93"

    aput-object v4, v2, v3

    const/16 v3, 0x1d0

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffc\u200d\ud83c\udf93"

    aput-object v4, v2, v3

    const/16 v3, 0x1d1

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffd\u200d\ud83c\udf93"

    aput-object v4, v2, v3

    const/16 v3, 0x1d2

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffe\u200d\ud83c\udf93"

    aput-object v4, v2, v3

    const/16 v3, 0x1d3

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udfff\u200d\ud83c\udf93"

    aput-object v4, v2, v3

    const/16 v3, 0x1d4

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83c\udfa4"

    aput-object v4, v2, v3

    const/16 v3, 0x1d5

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffb\u200d\ud83c\udfa4"

    aput-object v4, v2, v3

    const/16 v3, 0x1d6

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffc\u200d\ud83c\udfa4"

    aput-object v4, v2, v3

    const/16 v3, 0x1d7

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffd\u200d\ud83c\udfa4"

    aput-object v4, v2, v3

    const/16 v3, 0x1d8

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffe\u200d\ud83c\udfa4"

    aput-object v4, v2, v3

    const/16 v3, 0x1d9

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udfff\u200d\ud83c\udfa4"

    aput-object v4, v2, v3

    const/16 v3, 0x1da

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83c\udfa4"

    aput-object v4, v2, v3

    const/16 v3, 0x1db

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffb\u200d\ud83c\udfa4"

    aput-object v4, v2, v3

    const/16 v3, 0x1dc

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffc\u200d\ud83c\udfa4"

    aput-object v4, v2, v3

    const/16 v3, 0x1dd

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffd\u200d\ud83c\udfa4"

    aput-object v4, v2, v3

    const/16 v3, 0x1de

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffe\u200d\ud83c\udfa4"

    aput-object v4, v2, v3

    const/16 v3, 0x1df

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udfff\u200d\ud83c\udfa4"

    aput-object v4, v2, v3

    const/16 v3, 0x1e0

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83c\udfeb"

    aput-object v4, v2, v3

    const/16 v3, 0x1e1

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffb\u200d\ud83c\udfeb"

    aput-object v4, v2, v3

    const/16 v3, 0x1e2

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffc\u200d\ud83c\udfeb"

    aput-object v4, v2, v3

    const/16 v3, 0x1e3

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffd\u200d\ud83c\udfeb"

    aput-object v4, v2, v3

    const/16 v3, 0x1e4

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffe\u200d\ud83c\udfeb"

    aput-object v4, v2, v3

    const/16 v3, 0x1e5

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udfff\u200d\ud83c\udfeb"

    aput-object v4, v2, v3

    const/16 v3, 0x1e6

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83c\udfeb"

    aput-object v4, v2, v3

    const/16 v3, 0x1e7

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffb\u200d\ud83c\udfeb"

    aput-object v4, v2, v3

    const/16 v3, 0x1e8

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffc\u200d\ud83c\udfeb"

    aput-object v4, v2, v3

    const/16 v3, 0x1e9

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffd\u200d\ud83c\udfeb"

    aput-object v4, v2, v3

    const/16 v3, 0x1ea

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffe\u200d\ud83c\udfeb"

    aput-object v4, v2, v3

    const/16 v3, 0x1eb

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udfff\u200d\ud83c\udfeb"

    aput-object v4, v2, v3

    const/16 v3, 0x1ec

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83c\udfed"

    aput-object v4, v2, v3

    const/16 v3, 0x1ed

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffb\u200d\ud83c\udfed"

    aput-object v4, v2, v3

    const/16 v3, 0x1ee

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffc\u200d\ud83c\udfed"

    aput-object v4, v2, v3

    const/16 v3, 0x1ef

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffd\u200d\ud83c\udfed"

    aput-object v4, v2, v3

    const/16 v3, 0x1f0

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffe\u200d\ud83c\udfed"

    aput-object v4, v2, v3

    const/16 v3, 0x1f1

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udfff\u200d\ud83c\udfed"

    aput-object v4, v2, v3

    const/16 v3, 0x1f2

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83c\udfed"

    aput-object v4, v2, v3

    const/16 v3, 0x1f3

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffb\u200d\ud83c\udfed"

    aput-object v4, v2, v3

    const/16 v3, 0x1f4

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffc\u200d\ud83c\udfed"

    aput-object v4, v2, v3

    const/16 v3, 0x1f5

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffd\u200d\ud83c\udfed"

    aput-object v4, v2, v3

    const/16 v3, 0x1f6

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffe\u200d\ud83c\udfed"

    aput-object v4, v2, v3

    const/16 v3, 0x1f7

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udfff\u200d\ud83c\udfed"

    aput-object v4, v2, v3

    const/16 v3, 0x1f8

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udcbb"

    aput-object v4, v2, v3

    const/16 v3, 0x1f9

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffb\u200d\ud83d\udcbb"

    aput-object v4, v2, v3

    const/16 v3, 0x1fa

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffc\u200d\ud83d\udcbb"

    aput-object v4, v2, v3

    const/16 v3, 0x1fb

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffd\u200d\ud83d\udcbb"

    aput-object v4, v2, v3

    const/16 v3, 0x1fc

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffe\u200d\ud83d\udcbb"

    aput-object v4, v2, v3

    const/16 v3, 0x1fd

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udfff\u200d\ud83d\udcbb"

    aput-object v4, v2, v3

    const/16 v3, 0x1fe

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udcbb"

    aput-object v4, v2, v3

    const/16 v3, 0x1ff

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffb\u200d\ud83d\udcbb"

    aput-object v4, v2, v3

    const/16 v3, 0x200

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffc\u200d\ud83d\udcbb"

    aput-object v4, v2, v3

    const/16 v3, 0x201

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffd\u200d\ud83d\udcbb"

    aput-object v4, v2, v3

    const/16 v3, 0x202

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffe\u200d\ud83d\udcbb"

    aput-object v4, v2, v3

    const/16 v3, 0x203

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udfff\u200d\ud83d\udcbb"

    aput-object v4, v2, v3

    const/16 v3, 0x204

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udcbc"

    aput-object v4, v2, v3

    const/16 v3, 0x205

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffb\u200d\ud83d\udcbc"

    aput-object v4, v2, v3

    const/16 v3, 0x206

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffc\u200d\ud83d\udcbc"

    aput-object v4, v2, v3

    const/16 v3, 0x207

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffd\u200d\ud83d\udcbc"

    aput-object v4, v2, v3

    const/16 v3, 0x208

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffe\u200d\ud83d\udcbc"

    aput-object v4, v2, v3

    const/16 v3, 0x209

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udfff\u200d\ud83d\udcbc"

    aput-object v4, v2, v3

    const/16 v3, 0x20a

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udcbc"

    aput-object v4, v2, v3

    const/16 v3, 0x20b

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffb\u200d\ud83d\udcbc"

    aput-object v4, v2, v3

    const/16 v3, 0x20c

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffc\u200d\ud83d\udcbc"

    aput-object v4, v2, v3

    const/16 v3, 0x20d

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffd\u200d\ud83d\udcbc"

    aput-object v4, v2, v3

    const/16 v3, 0x20e

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffe\u200d\ud83d\udcbc"

    aput-object v4, v2, v3

    const/16 v3, 0x20f

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udfff\u200d\ud83d\udcbc"

    aput-object v4, v2, v3

    const/16 v3, 0x210

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udd27"

    aput-object v4, v2, v3

    const/16 v3, 0x211

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffb\u200d\ud83d\udd27"

    aput-object v4, v2, v3

    const/16 v3, 0x212

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffc\u200d\ud83d\udd27"

    aput-object v4, v2, v3

    const/16 v3, 0x213

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffd\u200d\ud83d\udd27"

    aput-object v4, v2, v3

    const/16 v3, 0x214

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffe\u200d\ud83d\udd27"

    aput-object v4, v2, v3

    const/16 v3, 0x215

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udfff\u200d\ud83d\udd27"

    aput-object v4, v2, v3

    const/16 v3, 0x216

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udd27"

    aput-object v4, v2, v3

    const/16 v3, 0x217

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffb\u200d\ud83d\udd27"

    aput-object v4, v2, v3

    const/16 v3, 0x218

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffc\u200d\ud83d\udd27"

    aput-object v4, v2, v3

    const/16 v3, 0x219

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffd\u200d\ud83d\udd27"

    aput-object v4, v2, v3

    const/16 v3, 0x21a

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffe\u200d\ud83d\udd27"

    aput-object v4, v2, v3

    const/16 v3, 0x21b

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udfff\u200d\ud83d\udd27"

    aput-object v4, v2, v3

    const/16 v3, 0x21c

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udd2c"

    aput-object v4, v2, v3

    const/16 v3, 0x21d

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffb\u200d\ud83d\udd2c"

    aput-object v4, v2, v3

    const/16 v3, 0x21e

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffc\u200d\ud83d\udd2c"

    aput-object v4, v2, v3

    const/16 v3, 0x21f

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffd\u200d\ud83d\udd2c"

    aput-object v4, v2, v3

    const/16 v3, 0x220

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffe\u200d\ud83d\udd2c"

    aput-object v4, v2, v3

    const/16 v3, 0x221

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udfff\u200d\ud83d\udd2c"

    aput-object v4, v2, v3

    const/16 v3, 0x222

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udd2c"

    aput-object v4, v2, v3

    const/16 v3, 0x223

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffb\u200d\ud83d\udd2c"

    aput-object v4, v2, v3

    const/16 v3, 0x224

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffc\u200d\ud83d\udd2c"

    aput-object v4, v2, v3

    const/16 v3, 0x225

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffd\u200d\ud83d\udd2c"

    aput-object v4, v2, v3

    const/16 v3, 0x226

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffe\u200d\ud83d\udd2c"

    aput-object v4, v2, v3

    const/16 v3, 0x227

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udfff\u200d\ud83d\udd2c"

    aput-object v4, v2, v3

    const/16 v3, 0x228

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83c\udfa8"

    aput-object v4, v2, v3

    const/16 v3, 0x229

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffb\u200d\ud83c\udfa8"

    aput-object v4, v2, v3

    const/16 v3, 0x22a

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffc\u200d\ud83c\udfa8"

    aput-object v4, v2, v3

    const/16 v3, 0x22b

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffd\u200d\ud83c\udfa8"

    aput-object v4, v2, v3

    const/16 v3, 0x22c

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffe\u200d\ud83c\udfa8"

    aput-object v4, v2, v3

    const/16 v3, 0x22d

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udfff\u200d\ud83c\udfa8"

    aput-object v4, v2, v3

    const/16 v3, 0x22e

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83c\udfa8"

    aput-object v4, v2, v3

    const/16 v3, 0x22f

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffb\u200d\ud83c\udfa8"

    aput-object v4, v2, v3

    const/16 v3, 0x230

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffc\u200d\ud83c\udfa8"

    aput-object v4, v2, v3

    const/16 v3, 0x231

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffd\u200d\ud83c\udfa8"

    aput-object v4, v2, v3

    const/16 v3, 0x232

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffe\u200d\ud83c\udfa8"

    aput-object v4, v2, v3

    const/16 v3, 0x233

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udfff\u200d\ud83c\udfa8"

    aput-object v4, v2, v3

    const/16 v3, 0x234

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\ude92"

    aput-object v4, v2, v3

    const/16 v3, 0x235

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffb\u200d\ud83d\ude92"

    aput-object v4, v2, v3

    const/16 v3, 0x236

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffc\u200d\ud83d\ude92"

    aput-object v4, v2, v3

    const/16 v3, 0x237

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffd\u200d\ud83d\ude92"

    aput-object v4, v2, v3

    const/16 v3, 0x238

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffe\u200d\ud83d\ude92"

    aput-object v4, v2, v3

    const/16 v3, 0x239

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udfff\u200d\ud83d\ude92"

    aput-object v4, v2, v3

    const/16 v3, 0x23a

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\ude92"

    aput-object v4, v2, v3

    const/16 v3, 0x23b

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffb\u200d\ud83d\ude92"

    aput-object v4, v2, v3

    const/16 v3, 0x23c

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffc\u200d\ud83d\ude92"

    aput-object v4, v2, v3

    const/16 v3, 0x23d

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffd\u200d\ud83d\ude92"

    aput-object v4, v2, v3

    const/16 v3, 0x23e

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffe\u200d\ud83d\ude92"

    aput-object v4, v2, v3

    const/16 v3, 0x23f

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udfff\u200d\ud83d\ude92"

    aput-object v4, v2, v3

    const/16 v3, 0x240

    const-string/jumbo v4, "\ud83d\udc69\u200d\u2708"

    aput-object v4, v2, v3

    const/16 v3, 0x241

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffb\u200d\u2708"

    aput-object v4, v2, v3

    const/16 v3, 0x242

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffc\u200d\u2708"

    aput-object v4, v2, v3

    const/16 v3, 0x243

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffd\u200d\u2708"

    aput-object v4, v2, v3

    const/16 v3, 0x244

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffe\u200d\u2708"

    aput-object v4, v2, v3

    const/16 v3, 0x245

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udfff\u200d\u2708"

    aput-object v4, v2, v3

    const/16 v3, 0x246

    const-string/jumbo v4, "\ud83d\udc68\u200d\u2708"

    aput-object v4, v2, v3

    const/16 v3, 0x247

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffb\u200d\u2708"

    aput-object v4, v2, v3

    const/16 v3, 0x248

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffc\u200d\u2708"

    aput-object v4, v2, v3

    const/16 v3, 0x249

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffd\u200d\u2708"

    aput-object v4, v2, v3

    const/16 v3, 0x24a

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffe\u200d\u2708"

    aput-object v4, v2, v3

    const/16 v3, 0x24b

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udfff\u200d\u2708"

    aput-object v4, v2, v3

    const/16 v3, 0x24c

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\ude80"

    aput-object v4, v2, v3

    const/16 v3, 0x24d

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffb\u200d\ud83d\ude80"

    aput-object v4, v2, v3

    const/16 v3, 0x24e

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffc\u200d\ud83d\ude80"

    aput-object v4, v2, v3

    const/16 v3, 0x24f

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffd\u200d\ud83d\ude80"

    aput-object v4, v2, v3

    const/16 v3, 0x250

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffe\u200d\ud83d\ude80"

    aput-object v4, v2, v3

    const/16 v3, 0x251

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udfff\u200d\ud83d\ude80"

    aput-object v4, v2, v3

    const/16 v3, 0x252

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\ude80"

    aput-object v4, v2, v3

    const/16 v3, 0x253

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffb\u200d\ud83d\ude80"

    aput-object v4, v2, v3

    const/16 v3, 0x254

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffc\u200d\ud83d\ude80"

    aput-object v4, v2, v3

    const/16 v3, 0x255

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffd\u200d\ud83d\ude80"

    aput-object v4, v2, v3

    const/16 v3, 0x256

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffe\u200d\ud83d\ude80"

    aput-object v4, v2, v3

    const/16 v3, 0x257

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udfff\u200d\ud83d\ude80"

    aput-object v4, v2, v3

    const/16 v3, 0x258

    const-string/jumbo v4, "\ud83d\udc69\u200d\u2696"

    aput-object v4, v2, v3

    const/16 v3, 0x259

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffb\u200d\u2696"

    aput-object v4, v2, v3

    const/16 v3, 0x25a

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffc\u200d\u2696"

    aput-object v4, v2, v3

    const/16 v3, 0x25b

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffd\u200d\u2696"

    aput-object v4, v2, v3

    const/16 v3, 0x25c

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udffe\u200d\u2696"

    aput-object v4, v2, v3

    const/16 v3, 0x25d

    const-string/jumbo v4, "\ud83d\udc69\ud83c\udfff\u200d\u2696"

    aput-object v4, v2, v3

    const/16 v3, 0x25e

    const-string/jumbo v4, "\ud83d\udc68\u200d\u2696"

    aput-object v4, v2, v3

    const/16 v3, 0x25f

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffb\u200d\u2696"

    aput-object v4, v2, v3

    const/16 v3, 0x260

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffc\u200d\u2696"

    aput-object v4, v2, v3

    const/16 v3, 0x261

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffd\u200d\u2696"

    aput-object v4, v2, v3

    const/16 v3, 0x262

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udffe\u200d\u2696"

    aput-object v4, v2, v3

    const/16 v3, 0x263

    const-string/jumbo v4, "\ud83d\udc68\ud83c\udfff\u200d\u2696"

    aput-object v4, v2, v3

    const/16 v3, 0x264

    const-string/jumbo v4, "\ud83e\udd36"

    aput-object v4, v2, v3

    const/16 v3, 0x265

    const-string/jumbo v4, "\ud83e\udd36\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x266

    const-string/jumbo v4, "\ud83e\udd36\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x267

    const-string/jumbo v4, "\ud83e\udd36\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x268

    const-string/jumbo v4, "\ud83e\udd36\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x269

    const-string/jumbo v4, "\ud83e\udd36\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x26a

    const-string/jumbo v4, "\ud83c\udf85"

    aput-object v4, v2, v3

    const/16 v3, 0x26b

    const-string/jumbo v4, "\ud83c\udf85\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x26c

    const-string/jumbo v4, "\ud83c\udf85\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x26d

    const-string/jumbo v4, "\ud83c\udf85\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x26e

    const-string/jumbo v4, "\ud83c\udf85\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x26f

    const-string/jumbo v4, "\ud83c\udf85\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x270

    const-string/jumbo v4, "\ud83d\udc78"

    aput-object v4, v2, v3

    const/16 v3, 0x271

    const-string/jumbo v4, "\ud83d\udc78\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x272

    const-string/jumbo v4, "\ud83d\udc78\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x273

    const-string/jumbo v4, "\ud83d\udc78\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x274

    const-string/jumbo v4, "\ud83d\udc78\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x275

    const-string/jumbo v4, "\ud83d\udc78\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x276

    const-string/jumbo v4, "\ud83e\udd34"

    aput-object v4, v2, v3

    const/16 v3, 0x277

    const-string/jumbo v4, "\ud83e\udd34\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x278

    const-string/jumbo v4, "\ud83e\udd34\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x279

    const-string/jumbo v4, "\ud83e\udd34\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x27a

    const-string/jumbo v4, "\ud83e\udd34\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x27b

    const-string/jumbo v4, "\ud83e\udd34\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x27c

    const-string/jumbo v4, "\ud83d\udc70"

    aput-object v4, v2, v3

    const/16 v3, 0x27d

    const-string/jumbo v4, "\ud83d\udc70\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x27e

    const-string/jumbo v4, "\ud83d\udc70\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x27f

    const-string/jumbo v4, "\ud83d\udc70\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x280

    const-string/jumbo v4, "\ud83d\udc70\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x281

    const-string/jumbo v4, "\ud83d\udc70\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x282

    const-string/jumbo v4, "\ud83e\udd35"

    aput-object v4, v2, v3

    const/16 v3, 0x283

    const-string/jumbo v4, "\ud83e\udd35\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x284

    const-string/jumbo v4, "\ud83e\udd35\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x285

    const-string/jumbo v4, "\ud83e\udd35\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x286

    const-string/jumbo v4, "\ud83e\udd35\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x287

    const-string/jumbo v4, "\ud83e\udd35\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x288

    const-string/jumbo v4, "\ud83d\udc7c"

    aput-object v4, v2, v3

    const/16 v3, 0x289

    const-string/jumbo v4, "\ud83d\udc7c\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x28a

    const-string/jumbo v4, "\ud83d\udc7c\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x28b

    const-string/jumbo v4, "\ud83d\udc7c\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x28c

    const-string/jumbo v4, "\ud83d\udc7c\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x28d

    const-string/jumbo v4, "\ud83d\udc7c\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x28e

    const-string/jumbo v4, "\ud83e\udd30"

    aput-object v4, v2, v3

    const/16 v3, 0x28f

    const-string/jumbo v4, "\ud83e\udd30\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x290

    const-string/jumbo v4, "\ud83e\udd30\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x291

    const-string/jumbo v4, "\ud83e\udd30\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x292

    const-string/jumbo v4, "\ud83e\udd30\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x293

    const-string/jumbo v4, "\ud83e\udd30\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x294

    const-string/jumbo v4, "\ud83d\ude47\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x295

    const-string/jumbo v4, "\ud83d\ude47\ud83c\udffb\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x296

    const-string/jumbo v4, "\ud83d\ude47\ud83c\udffc\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x297

    const-string/jumbo v4, "\ud83d\ude47\ud83c\udffd\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x298

    const-string/jumbo v4, "\ud83d\ude47\ud83c\udffe\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x299

    const-string/jumbo v4, "\ud83d\ude47\ud83c\udfff\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x29a

    const-string/jumbo v4, "\ud83d\ude47"

    aput-object v4, v2, v3

    const/16 v3, 0x29b

    const-string/jumbo v4, "\ud83d\ude47\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x29c

    const-string/jumbo v4, "\ud83d\ude47\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x29d

    const-string/jumbo v4, "\ud83d\ude47\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x29e

    const-string/jumbo v4, "\ud83d\ude47\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x29f

    const-string/jumbo v4, "\ud83d\ude47\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x2a0

    const-string/jumbo v4, "\ud83d\udc81"

    aput-object v4, v2, v3

    const/16 v3, 0x2a1

    const-string/jumbo v4, "\ud83d\udc81\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x2a2

    const-string/jumbo v4, "\ud83d\udc81\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x2a3

    const-string/jumbo v4, "\ud83d\udc81\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x2a4

    const-string/jumbo v4, "\ud83d\udc81\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x2a5

    const-string/jumbo v4, "\ud83d\udc81\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x2a6

    const-string/jumbo v4, "\ud83d\udc81\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2a7

    const-string/jumbo v4, "\ud83d\udc81\ud83c\udffb\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2a8

    const-string/jumbo v4, "\ud83d\udc81\ud83c\udffc\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2a9

    const-string/jumbo v4, "\ud83d\udc81\ud83c\udffd\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2aa

    const-string/jumbo v4, "\ud83d\udc81\ud83c\udffe\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2ab

    const-string/jumbo v4, "\ud83d\udc81\ud83c\udfff\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2ac

    const-string/jumbo v4, "\ud83d\ude45"

    aput-object v4, v2, v3

    const/16 v3, 0x2ad

    const-string/jumbo v4, "\ud83d\ude45\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x2ae

    const-string/jumbo v4, "\ud83d\ude45\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x2af

    const-string/jumbo v4, "\ud83d\ude45\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x2b0

    const-string/jumbo v4, "\ud83d\ude45\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x2b1

    const-string/jumbo v4, "\ud83d\ude45\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x2b2

    const-string/jumbo v4, "\ud83d\ude45\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2b3

    const-string/jumbo v4, "\ud83d\ude45\ud83c\udffb\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2b4

    const-string/jumbo v4, "\ud83d\ude45\ud83c\udffc\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2b5

    const-string/jumbo v4, "\ud83d\ude45\ud83c\udffd\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2b6

    const-string/jumbo v4, "\ud83d\ude45\ud83c\udffe\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2b7

    const-string/jumbo v4, "\ud83d\ude45\ud83c\udfff\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2b8

    const-string/jumbo v4, "\ud83d\ude46"

    aput-object v4, v2, v3

    const/16 v3, 0x2b9

    const-string/jumbo v4, "\ud83d\ude46\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x2ba

    const-string/jumbo v4, "\ud83d\ude46\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x2bb

    const-string/jumbo v4, "\ud83d\ude46\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x2bc

    const-string/jumbo v4, "\ud83d\ude46\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x2bd

    const-string/jumbo v4, "\ud83d\ude46\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x2be

    const-string/jumbo v4, "\ud83d\ude46\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2bf

    const-string/jumbo v4, "\ud83d\ude46\ud83c\udffb\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2c0

    const-string/jumbo v4, "\ud83d\ude46\ud83c\udffc\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2c1

    const-string/jumbo v4, "\ud83d\ude46\ud83c\udffd\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2c2

    const-string/jumbo v4, "\ud83d\ude46\ud83c\udffe\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2c3

    const-string/jumbo v4, "\ud83d\ude46\ud83c\udfff\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2c4

    const-string/jumbo v4, "\ud83d\ude4b"

    aput-object v4, v2, v3

    const/16 v3, 0x2c5

    const-string/jumbo v4, "\ud83d\ude4b\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x2c6

    const-string/jumbo v4, "\ud83d\ude4b\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x2c7

    const-string/jumbo v4, "\ud83d\ude4b\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x2c8

    const-string/jumbo v4, "\ud83d\ude4b\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x2c9

    const-string/jumbo v4, "\ud83d\ude4b\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x2ca

    const-string/jumbo v4, "\ud83d\ude4b\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2cb

    const-string/jumbo v4, "\ud83d\ude4b\ud83c\udffb\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2cc

    const-string/jumbo v4, "\ud83d\ude4b\ud83c\udffc\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2cd

    const-string/jumbo v4, "\ud83d\ude4b\ud83c\udffd\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2ce

    const-string/jumbo v4, "\ud83d\ude4b\ud83c\udffe\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2cf

    const-string/jumbo v4, "\ud83d\ude4b\ud83c\udfff\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2d0

    const-string/jumbo v4, "\ud83e\udd26\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x2d1

    const-string/jumbo v4, "\ud83e\udd26\ud83c\udffb\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x2d2

    const-string/jumbo v4, "\ud83e\udd26\ud83c\udffc\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x2d3

    const-string/jumbo v4, "\ud83e\udd26\ud83c\udffd\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x2d4

    const-string/jumbo v4, "\ud83e\udd26\ud83c\udffe\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x2d5

    const-string/jumbo v4, "\ud83e\udd26\ud83c\udfff\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x2d6

    const-string/jumbo v4, "\ud83e\udd26\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2d7

    const-string/jumbo v4, "\ud83e\udd26\ud83c\udffb\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2d8

    const-string/jumbo v4, "\ud83e\udd26\ud83c\udffc\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2d9

    const-string/jumbo v4, "\ud83e\udd26\ud83c\udffd\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2da

    const-string/jumbo v4, "\ud83e\udd26\ud83c\udffe\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2db

    const-string/jumbo v4, "\ud83e\udd26\ud83c\udfff\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2dc

    const-string/jumbo v4, "\ud83e\udd37\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x2dd

    const-string/jumbo v4, "\ud83e\udd37\ud83c\udffb\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x2de

    const-string/jumbo v4, "\ud83e\udd37\ud83c\udffc\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x2df

    const-string/jumbo v4, "\ud83e\udd37\ud83c\udffd\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x2e0

    const-string/jumbo v4, "\ud83e\udd37\ud83c\udffe\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x2e1

    const-string/jumbo v4, "\ud83e\udd37\ud83c\udfff\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x2e2

    const-string/jumbo v4, "\ud83e\udd37\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2e3

    const-string/jumbo v4, "\ud83e\udd37\ud83c\udffb\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2e4

    const-string/jumbo v4, "\ud83e\udd37\ud83c\udffc\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2e5

    const-string/jumbo v4, "\ud83e\udd37\ud83c\udffd\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2e6

    const-string/jumbo v4, "\ud83e\udd37\ud83c\udffe\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2e7

    const-string/jumbo v4, "\ud83e\udd37\ud83c\udfff\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2e8

    const-string/jumbo v4, "\ud83d\ude4e"

    aput-object v4, v2, v3

    const/16 v3, 0x2e9

    const-string/jumbo v4, "\ud83d\ude4e\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x2ea

    const-string/jumbo v4, "\ud83d\ude4e\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x2eb

    const-string/jumbo v4, "\ud83d\ude4e\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x2ec

    const-string/jumbo v4, "\ud83d\ude4e\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x2ed

    const-string/jumbo v4, "\ud83d\ude4e\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x2ee

    const-string/jumbo v4, "\ud83d\ude4e\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2ef

    const-string/jumbo v4, "\ud83d\ude4e\ud83c\udffb\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2f0

    const-string/jumbo v4, "\ud83d\ude4e\ud83c\udffc\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2f1

    const-string/jumbo v4, "\ud83d\ude4e\ud83c\udffd\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2f2

    const-string/jumbo v4, "\ud83d\ude4e\ud83c\udffe\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2f3

    const-string/jumbo v4, "\ud83d\ude4e\ud83c\udfff\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2f4

    const-string/jumbo v4, "\ud83d\ude4d"

    aput-object v4, v2, v3

    const/16 v3, 0x2f5

    const-string/jumbo v4, "\ud83d\ude4d\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x2f6

    const-string/jumbo v4, "\ud83d\ude4d\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x2f7

    const-string/jumbo v4, "\ud83d\ude4d\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x2f8

    const-string/jumbo v4, "\ud83d\ude4d\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x2f9

    const-string/jumbo v4, "\ud83d\ude4d\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x2fa

    const-string/jumbo v4, "\ud83d\ude4d\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2fb

    const-string/jumbo v4, "\ud83d\ude4d\ud83c\udffb\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2fc

    const-string/jumbo v4, "\ud83d\ude4d\ud83c\udffc\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2fd

    const-string/jumbo v4, "\ud83d\ude4d\ud83c\udffd\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2fe

    const-string/jumbo v4, "\ud83d\ude4d\ud83c\udffe\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x2ff

    const-string/jumbo v4, "\ud83d\ude4d\ud83c\udfff\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x300

    const-string/jumbo v4, "\ud83d\udc87"

    aput-object v4, v2, v3

    const/16 v3, 0x301

    const-string/jumbo v4, "\ud83d\udc87\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x302

    const-string/jumbo v4, "\ud83d\udc87\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x303

    const-string/jumbo v4, "\ud83d\udc87\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x304

    const-string/jumbo v4, "\ud83d\udc87\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x305

    const-string/jumbo v4, "\ud83d\udc87\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x306

    const-string/jumbo v4, "\ud83d\udc87\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x307

    const-string/jumbo v4, "\ud83d\udc87\ud83c\udffb\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x308

    const-string/jumbo v4, "\ud83d\udc87\ud83c\udffc\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x309

    const-string/jumbo v4, "\ud83d\udc87\ud83c\udffd\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x30a

    const-string/jumbo v4, "\ud83d\udc87\ud83c\udffe\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x30b

    const-string/jumbo v4, "\ud83d\udc87\ud83c\udfff\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x30c

    const-string/jumbo v4, "\ud83d\udc86"

    aput-object v4, v2, v3

    const/16 v3, 0x30d

    const-string/jumbo v4, "\ud83d\udc86\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x30e

    const-string/jumbo v4, "\ud83d\udc86\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x30f

    const-string/jumbo v4, "\ud83d\udc86\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x310

    const-string/jumbo v4, "\ud83d\udc86\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x311

    const-string/jumbo v4, "\ud83d\udc86\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x312

    const-string/jumbo v4, "\ud83d\udc86\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x313

    const-string/jumbo v4, "\ud83d\udc86\ud83c\udffb\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x314

    const-string/jumbo v4, "\ud83d\udc86\ud83c\udffc\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x315

    const-string/jumbo v4, "\ud83d\udc86\ud83c\udffd\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x316

    const-string/jumbo v4, "\ud83d\udc86\ud83c\udffe\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x317

    const-string/jumbo v4, "\ud83d\udc86\ud83c\udfff\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x318

    const-string/jumbo v4, "\ud83d\udd74"

    aput-object v4, v2, v3

    const/16 v3, 0x319

    const-string/jumbo v4, "\ud83d\udd74\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x31a

    const-string/jumbo v4, "\ud83d\udd74\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x31b

    const-string/jumbo v4, "\ud83d\udd74\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x31c

    const-string/jumbo v4, "\ud83d\udd74\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x31d

    const-string/jumbo v4, "\ud83d\udd74\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x31e

    const-string/jumbo v4, "\ud83d\udc83"

    aput-object v4, v2, v3

    const/16 v3, 0x31f

    const-string/jumbo v4, "\ud83d\udc83\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x320

    const-string/jumbo v4, "\ud83d\udc83\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x321

    const-string/jumbo v4, "\ud83d\udc83\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x322

    const-string/jumbo v4, "\ud83d\udc83\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x323

    const-string/jumbo v4, "\ud83d\udc83\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x324

    const-string/jumbo v4, "\ud83d\udd7a"

    aput-object v4, v2, v3

    const/16 v3, 0x325

    const-string/jumbo v4, "\ud83d\udd7a\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x326

    const-string/jumbo v4, "\ud83d\udd7a\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x327

    const-string/jumbo v4, "\ud83d\udd7a\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x328

    const-string/jumbo v4, "\ud83d\udd7a\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x329

    const-string/jumbo v4, "\ud83d\udd7a\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x32a

    const-string/jumbo v4, "\ud83d\udc6f"

    aput-object v4, v2, v3

    const/16 v3, 0x32b

    const-string/jumbo v4, "\ud83d\udc6f\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x32c

    const-string/jumbo v4, "\ud83d\udeb6\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x32d

    const-string/jumbo v4, "\ud83d\udeb6\ud83c\udffb\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x32e

    const-string/jumbo v4, "\ud83d\udeb6\ud83c\udffc\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x32f

    const-string/jumbo v4, "\ud83d\udeb6\ud83c\udffd\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x330

    const-string/jumbo v4, "\ud83d\udeb6\ud83c\udffe\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x331

    const-string/jumbo v4, "\ud83d\udeb6\ud83c\udfff\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x332

    const-string/jumbo v4, "\ud83d\udeb6"

    aput-object v4, v2, v3

    const/16 v3, 0x333

    const-string/jumbo v4, "\ud83d\udeb6\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x334

    const-string/jumbo v4, "\ud83d\udeb6\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x335

    const-string/jumbo v4, "\ud83d\udeb6\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x336

    const-string/jumbo v4, "\ud83d\udeb6\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x337

    const-string/jumbo v4, "\ud83d\udeb6\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x338

    const-string/jumbo v4, "\ud83c\udfc3\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x339

    const-string/jumbo v4, "\ud83c\udfc3\ud83c\udffb\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x33a

    const-string/jumbo v4, "\ud83c\udfc3\ud83c\udffc\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x33b

    const-string/jumbo v4, "\ud83c\udfc3\ud83c\udffd\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x33c

    const-string/jumbo v4, "\ud83c\udfc3\ud83c\udffe\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x33d

    const-string/jumbo v4, "\ud83c\udfc3\ud83c\udfff\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x33e

    const-string/jumbo v4, "\ud83c\udfc3"

    aput-object v4, v2, v3

    const/16 v3, 0x33f

    const-string/jumbo v4, "\ud83c\udfc3\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x340

    const-string/jumbo v4, "\ud83c\udfc3\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x341

    const-string/jumbo v4, "\ud83c\udfc3\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x342

    const-string/jumbo v4, "\ud83c\udfc3\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x343

    const-string/jumbo v4, "\ud83c\udfc3\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x344

    const-string/jumbo v4, "\ud83d\udc6b"

    aput-object v4, v2, v3

    const/16 v3, 0x345

    const-string/jumbo v4, "\ud83d\udc6d"

    aput-object v4, v2, v3

    const/16 v3, 0x346

    const-string/jumbo v4, "\ud83d\udc6c"

    aput-object v4, v2, v3

    const/16 v3, 0x347

    const-string/jumbo v4, "\ud83d\udc91"

    aput-object v4, v2, v3

    const/16 v3, 0x348

    const-string/jumbo v4, "\ud83d\udc69\u200d\u2764\u200d\ud83d\udc69"

    aput-object v4, v2, v3

    const/16 v3, 0x349

    const-string/jumbo v4, "\ud83d\udc68\u200d\u2764\u200d\ud83d\udc68"

    aput-object v4, v2, v3

    const/16 v3, 0x34a

    const-string/jumbo v4, "\ud83d\udc8f"

    aput-object v4, v2, v3

    const/16 v3, 0x34b

    const-string/jumbo v4, "\ud83d\udc69\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc69"

    aput-object v4, v2, v3

    const/16 v3, 0x34c

    const-string/jumbo v4, "\ud83d\udc68\u200d\u2764\u200d\ud83d\udc8b\u200d\ud83d\udc68"

    aput-object v4, v2, v3

    const/16 v3, 0x34d

    const-string/jumbo v4, "\ud83d\udc6a"

    aput-object v4, v2, v3

    const/16 v3, 0x34e

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc69\u200d\ud83d\udc67"

    aput-object v4, v2, v3

    const/16 v3, 0x34f

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0x350

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc69\u200d\ud83d\udc66\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0x351

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc67"

    aput-object v4, v2, v3

    const/16 v3, 0x352

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udc69\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0x353

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udc69\u200d\ud83d\udc67"

    aput-object v4, v2, v3

    const/16 v3, 0x354

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0x355

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udc69\u200d\ud83d\udc66\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0x356

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc67"

    aput-object v4, v2, v3

    const/16 v3, 0x357

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc68\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0x358

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc68\u200d\ud83d\udc67"

    aput-object v4, v2, v3

    const/16 v3, 0x359

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc68\u200d\ud83d\udc67\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0x35a

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc68\u200d\ud83d\udc66\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0x35b

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc68\u200d\ud83d\udc67\u200d\ud83d\udc67"

    aput-object v4, v2, v3

    const/16 v3, 0x35c

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0x35d

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udc67"

    aput-object v4, v2, v3

    const/16 v3, 0x35e

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0x35f

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udc66\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0x360

    const-string/jumbo v4, "\ud83d\udc69\u200d\ud83d\udc67\u200d\ud83d\udc67"

    aput-object v4, v2, v3

    const/16 v3, 0x361

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0x362

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc67"

    aput-object v4, v2, v3

    const/16 v3, 0x363

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc67\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0x364

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc66\u200d\ud83d\udc66"

    aput-object v4, v2, v3

    const/16 v3, 0x365

    const-string/jumbo v4, "\ud83d\udc68\u200d\ud83d\udc67\u200d\ud83d\udc67"

    aput-object v4, v2, v3

    const/16 v3, 0x366

    const-string/jumbo v4, "\ud83d\udc5a"

    aput-object v4, v2, v3

    const/16 v3, 0x367

    const-string/jumbo v4, "\ud83d\udc55"

    aput-object v4, v2, v3

    const/16 v3, 0x368

    const-string/jumbo v4, "\ud83d\udc56"

    aput-object v4, v2, v3

    const/16 v3, 0x369

    const-string/jumbo v4, "\ud83d\udc54"

    aput-object v4, v2, v3

    const/16 v3, 0x36a

    const-string/jumbo v4, "\ud83d\udc57"

    aput-object v4, v2, v3

    const/16 v3, 0x36b

    const-string/jumbo v4, "\ud83d\udc59"

    aput-object v4, v2, v3

    const/16 v3, 0x36c

    const-string/jumbo v4, "\ud83d\udc58"

    aput-object v4, v2, v3

    const/16 v3, 0x36d

    const-string/jumbo v4, "\ud83d\udc60"

    aput-object v4, v2, v3

    const/16 v3, 0x36e

    const-string/jumbo v4, "\ud83d\udc61"

    aput-object v4, v2, v3

    const/16 v3, 0x36f

    const-string/jumbo v4, "\ud83d\udc62"

    aput-object v4, v2, v3

    const/16 v3, 0x370

    const-string/jumbo v4, "\ud83d\udc5e"

    aput-object v4, v2, v3

    const/16 v3, 0x371

    const-string/jumbo v4, "\ud83d\udc5f"

    aput-object v4, v2, v3

    const/16 v3, 0x372

    const-string/jumbo v4, "\ud83d\udc52"

    aput-object v4, v2, v3

    const/16 v3, 0x373

    const-string/jumbo v4, "\ud83c\udfa9"

    aput-object v4, v2, v3

    const/16 v3, 0x374

    const-string/jumbo v4, "\ud83c\udf93"

    aput-object v4, v2, v3

    const/16 v3, 0x375

    const-string/jumbo v4, "\ud83d\udc51"

    aput-object v4, v2, v3

    const/16 v3, 0x376

    const-string/jumbo v4, "\u26d1"

    aput-object v4, v2, v3

    const/16 v3, 0x377

    const-string/jumbo v4, "\ud83c\udf92"

    aput-object v4, v2, v3

    const/16 v3, 0x378

    const-string/jumbo v4, "\ud83d\udc5d"

    aput-object v4, v2, v3

    const/16 v3, 0x379

    const-string/jumbo v4, "\ud83d\udc5b"

    aput-object v4, v2, v3

    const/16 v3, 0x37a

    const-string/jumbo v4, "\ud83d\udc5c"

    aput-object v4, v2, v3

    const/16 v3, 0x37b

    const-string/jumbo v4, "\ud83d\udcbc"

    aput-object v4, v2, v3

    const/16 v3, 0x37c

    const-string/jumbo v4, "\ud83d\udc53"

    aput-object v4, v2, v3

    const/16 v3, 0x37d

    const-string/jumbo v4, "\ud83d\udd76"

    aput-object v4, v2, v3

    const/16 v3, 0x37e

    const-string/jumbo v4, "\ud83c\udf02"

    aput-object v4, v2, v3

    const/16 v3, 0x37f

    const-string/jumbo v4, "\u2602"

    aput-object v4, v2, v3

    const/16 v3, 0x380

    const-string/jumbo v4, "\u2764"

    aput-object v4, v2, v3

    const/16 v3, 0x381

    const-string/jumbo v4, "\ud83d\udc9b"

    aput-object v4, v2, v3

    const/16 v3, 0x382

    const-string/jumbo v4, "\ud83d\udc9a"

    aput-object v4, v2, v3

    const/16 v3, 0x383

    const-string/jumbo v4, "\ud83d\udc99"

    aput-object v4, v2, v3

    const/16 v3, 0x384

    const-string/jumbo v4, "\ud83d\udc9c"

    aput-object v4, v2, v3

    const/16 v3, 0x385

    const-string/jumbo v4, "\ud83d\udda4"

    aput-object v4, v2, v3

    const/16 v3, 0x386

    const-string/jumbo v4, "\ud83d\udc94"

    aput-object v4, v2, v3

    const/16 v3, 0x387

    const-string/jumbo v4, "\u2763"

    aput-object v4, v2, v3

    const/16 v3, 0x388

    const-string/jumbo v4, "\ud83d\udc95"

    aput-object v4, v2, v3

    const/16 v3, 0x389

    const-string/jumbo v4, "\ud83d\udc9e"

    aput-object v4, v2, v3

    const/16 v3, 0x38a

    const-string/jumbo v4, "\ud83d\udc93"

    aput-object v4, v2, v3

    const/16 v3, 0x38b

    const-string/jumbo v4, "\ud83d\udc97"

    aput-object v4, v2, v3

    const/16 v3, 0x38c

    const-string/jumbo v4, "\ud83d\udc96"

    aput-object v4, v2, v3

    const/16 v3, 0x38d

    const-string/jumbo v4, "\ud83d\udc98"

    aput-object v4, v2, v3

    const/16 v3, 0x38e

    const-string/jumbo v4, "\ud83d\udc9d"

    aput-object v4, v2, v3

    aput-object v2, v1, v7

    const/16 v2, 0x9f

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "\ud83d\udc36"

    aput-object v3, v2, v7

    const-string/jumbo v3, "\ud83d\udc31"

    aput-object v3, v2, v5

    const-string/jumbo v3, "\ud83d\udc2d"

    aput-object v3, v2, v8

    const-string/jumbo v3, "\ud83d\udc39"

    aput-object v3, v2, v6

    const-string/jumbo v3, "\ud83d\udc30"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "\ud83e\udd8a"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "\ud83d\udc3b"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "\ud83d\udc3c"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "\ud83d\udc28"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "\ud83d\udc2f"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "\ud83e\udd81"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "\ud83d\udc2e"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "\ud83d\udc37"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "\ud83d\udc3d"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "\ud83d\udc38"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "\ud83d\udc35"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "\ud83d\ude48"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "\ud83d\ude49"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "\ud83d\ude4a"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "\ud83d\udc12"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "\ud83d\udc14"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "\ud83d\udc27"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "\ud83d\udc26"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "\ud83d\udc24"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "\ud83d\udc23"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "\ud83d\udc25"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "\ud83e\udd86"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "\ud83e\udd85"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "\ud83e\udd89"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "\ud83e\udd87"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "\ud83d\udc3a"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "\ud83d\udc17"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "\ud83d\udc34"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "\ud83e\udd84"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "\ud83d\udc1d"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "\ud83d\udc1b"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "\ud83e\udd8b"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "\ud83d\udc0c"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "\ud83d\udc1a"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "\ud83d\udc1e"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "\ud83d\udc1c"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "\ud83d\udd77"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "\ud83d\udd78"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "\ud83d\udc22"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "\ud83d\udc0d"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "\ud83e\udd8e"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "\ud83e\udd82"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "\ud83e\udd80"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "\ud83e\udd91"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "\ud83d\udc19"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "\ud83e\udd90"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "\ud83d\udc20"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "\ud83d\udc1f"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "\ud83d\udc21"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "\ud83d\udc2c"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "\ud83e\udd88"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "\ud83d\udc33"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "\ud83d\udc0b"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "\ud83d\udc0a"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "\ud83d\udc06"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "\ud83d\udc05"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "\ud83d\udc03"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "\ud83d\udc02"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "\ud83d\udc04"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "\ud83e\udd8c"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "\ud83d\udc2a"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "\ud83d\udc2b"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "\ud83d\udc18"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "\ud83e\udd8f"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "\ud83e\udd8d"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "\ud83d\udc0e"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "\ud83d\udc16"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "\ud83d\udc10"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "\ud83d\udc0f"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "\ud83d\udc11"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "\ud83d\udc15"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "\ud83d\udc29"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "\ud83d\udc08"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "\ud83d\udc13"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "\ud83e\udd83"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "\ud83d\udd4a"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "\ud83d\udc07"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "\ud83d\udc01"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "\ud83d\udc00"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "\ud83d\udc3f"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "\ud83d\udc3e"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "\ud83d\udc09"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "\ud83d\udc32"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "\ud83c\udf35"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "\ud83c\udf84"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "\ud83c\udf32"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "\ud83c\udf33"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "\ud83c\udf34"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "\ud83c\udf31"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "\ud83c\udf3f"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "\u2618"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "\ud83c\udf40"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "\ud83c\udf8d"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "\ud83c\udf8b"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "\ud83c\udf43"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "\ud83c\udf42"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "\ud83c\udf41"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "\ud83c\udf44"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "\ud83c\udf3e"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "\ud83d\udc90"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "\ud83c\udf37"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "\ud83c\udf39"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "\ud83e\udd40"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "\ud83c\udf3b"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "\ud83c\udf3c"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "\ud83c\udf38"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "\ud83c\udf3a"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "\ud83c\udf0e"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "\ud83c\udf0d"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "\ud83c\udf0f"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "\ud83c\udf15"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "\ud83c\udf16"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "\ud83c\udf17"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "\ud83c\udf18"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "\ud83c\udf11"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "\ud83c\udf12"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "\ud83c\udf13"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "\ud83c\udf14"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "\ud83c\udf1a"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "\ud83c\udf1d"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "\ud83c\udf1e"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "\ud83c\udf1b"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "\ud83c\udf1c"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "\ud83c\udf19"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "\ud83d\udcab"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "\u2b50"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "\ud83c\udf1f"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "\u2728"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "\u26a1"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "\ud83d\udd25"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "\ud83d\udca5"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "\u2604"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "\u2600"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "\ud83c\udf24"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "\u26c5"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "\ud83c\udf25"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "\ud83c\udf26"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "\ud83c\udf08"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "\u2601"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "\ud83c\udf27"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "\u26c8"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "\ud83c\udf29"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "\ud83c\udf28"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "\u2603"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "\u26c4"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "\u2744"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "\ud83c\udf2c"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "\ud83d\udca8"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "\ud83c\udf2a"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "\ud83c\udf2b"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "\ud83c\udf0a"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "\ud83d\udca7"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "\ud83d\udca6"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "\u2614"

    aput-object v4, v2, v3

    aput-object v2, v1, v5

    const/16 v2, 0x123

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "\ud83c\udf4f"

    aput-object v3, v2, v7

    const-string/jumbo v3, "\ud83c\udf4e"

    aput-object v3, v2, v5

    const-string/jumbo v3, "\ud83c\udf50"

    aput-object v3, v2, v8

    const-string/jumbo v3, "\ud83c\udf4a"

    aput-object v3, v2, v6

    const-string/jumbo v3, "\ud83c\udf4b"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "\ud83c\udf4c"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "\ud83c\udf49"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "\ud83c\udf47"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "\ud83c\udf53"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "\ud83c\udf48"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "\ud83c\udf52"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "\ud83c\udf51"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "\ud83c\udf4d"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "\ud83e\udd5d"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "\ud83e\udd51"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "\ud83c\udf45"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "\ud83c\udf46"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "\ud83e\udd52"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "\ud83e\udd55"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "\ud83c\udf3d"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "\ud83c\udf36"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "\ud83e\udd54"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "\ud83c\udf60"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "\ud83c\udf30"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "\ud83e\udd5c"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "\ud83c\udf6f"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "\ud83e\udd50"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "\ud83c\udf5e"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "\ud83e\udd56"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "\ud83e\uddc0"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "\ud83e\udd5a"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "\ud83c\udf73"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "\ud83e\udd53"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "\ud83e\udd5e"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "\ud83c\udf64"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "\ud83c\udf57"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "\ud83c\udf56"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "\ud83c\udf55"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "\ud83c\udf2d"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "\ud83c\udf54"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "\ud83c\udf5f"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "\ud83e\udd59"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "\ud83c\udf2e"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "\ud83c\udf2f"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "\ud83e\udd57"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "\ud83e\udd58"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "\ud83c\udf5d"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "\ud83c\udf5c"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "\ud83c\udf72"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "\ud83c\udf65"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "\ud83c\udf63"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "\ud83c\udf71"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "\ud83c\udf5b"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "\ud83c\udf59"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "\ud83c\udf5a"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "\ud83c\udf58"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "\ud83c\udf62"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "\ud83c\udf61"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "\ud83c\udf67"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "\ud83c\udf68"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "\ud83c\udf66"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "\ud83c\udf70"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "\ud83c\udf82"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "\ud83c\udf6e"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "\ud83c\udf6d"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "\ud83c\udf6c"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "\ud83c\udf6b"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "\ud83c\udf7f"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "\ud83c\udf69"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "\ud83c\udf6a"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "\ud83e\udd5b"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "\ud83c\udf7c"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "\u2615"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "\ud83c\udf75"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "\ud83c\udf76"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "\ud83c\udf7a"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "\ud83c\udf7b"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "\ud83e\udd42"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "\ud83c\udf77"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "\ud83e\udd43"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "\ud83c\udf78"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "\ud83c\udf79"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "\ud83c\udf7e"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "\ud83e\udd44"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "\ud83c\udf74"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "\ud83c\udf7d"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "\u26bd"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "\ud83c\udfc0"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "\ud83c\udfc8"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "\u26be"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "\ud83c\udfbe"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "\ud83c\udfd0"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "\ud83c\udfc9"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "\ud83c\udfb1"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "\ud83c\udfd3"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "\ud83c\udff8"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "\ud83e\udd45"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "\ud83c\udfd2"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "\ud83c\udfd1"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "\ud83c\udfcf"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "\u26f3"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "\ud83c\udff9"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "\ud83c\udfa3"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "\ud83e\udd4a"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "\ud83e\udd4b"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "\u26f8"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "\ud83c\udfbf"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "\u26f7"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "\ud83c\udfc2"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "\ud83c\udfcb\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "\ud83c\udfcb\ud83c\udffb\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "\ud83c\udfcb\ud83c\udffc\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "\ud83c\udfcb\ud83c\udffd\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "\ud83c\udfcb\ud83c\udffe\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "\ud83c\udfcb\ud83c\udfff\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "\ud83c\udfcb"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "\ud83c\udfcb\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "\ud83c\udfcb\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "\ud83c\udfcb\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "\ud83c\udfcb\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "\ud83c\udfcb\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "\ud83e\udd3a"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "\ud83e\udd3c\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "\ud83e\udd3c\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "\ud83e\udd38\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "\ud83e\udd38\ud83c\udffb\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "\ud83e\udd38\ud83c\udffc\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "\ud83e\udd38\ud83c\udffd\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "\ud83e\udd38\ud83c\udffe\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "\ud83e\udd38\ud83c\udfff\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "\ud83e\udd38\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "\ud83e\udd38\ud83c\udffb\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "\ud83e\udd38\ud83c\udffc\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "\ud83e\udd38\ud83c\udffd\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "\ud83e\udd38\ud83c\udffe\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "\ud83e\udd38\ud83c\udfff\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "\u26f9\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "\u26f9\ud83c\udffb\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "\u26f9\ud83c\udffc\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "\u26f9\ud83c\udffd\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "\u26f9\ud83c\udffe\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "\u26f9\ud83c\udfff\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "\u26f9"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "\u26f9\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "\u26f9\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "\u26f9\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "\u26f9\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "\u26f9\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "\ud83e\udd3e\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "\ud83e\udd3e\ud83c\udffb\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "\ud83e\udd3e\ud83c\udffc\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "\ud83e\udd3e\ud83c\udffd\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "\ud83e\udd3e\ud83c\udffe\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "\ud83e\udd3e\ud83c\udfff\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "\ud83e\udd3e\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "\ud83e\udd3e\ud83c\udffb\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "\ud83e\udd3e\ud83c\udffc\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "\ud83e\udd3e\ud83c\udffd\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "\ud83e\udd3e\ud83c\udffe\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "\ud83e\udd3e\ud83c\udfff\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "\ud83c\udfcc\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "\ud83c\udfcc\ud83c\udffb\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "\ud83c\udfcc\ud83c\udffc\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "\ud83c\udfcc\ud83c\udffd\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "\ud83c\udfcc\ud83c\udffe\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "\ud83c\udfcc\ud83c\udfff\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "\ud83c\udfcc"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "\ud83c\udfcc\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "\ud83c\udfcc\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "\ud83c\udfcc\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "\ud83c\udfcc\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "\ud83c\udfcc\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "\ud83c\udfc4\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "\ud83c\udfc4\ud83c\udffb\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "\ud83c\udfc4\ud83c\udffc\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "\ud83c\udfc4\ud83c\udffd\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "\ud83c\udfc4\ud83c\udffe\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "\ud83c\udfc4\ud83c\udfff\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "\ud83c\udfc4"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "\ud83c\udfc4\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "\ud83c\udfc4\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "\ud83c\udfc4\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "\ud83c\udfc4\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "\ud83c\udfc4\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "\ud83c\udfca\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "\ud83c\udfca\ud83c\udffb\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "\ud83c\udfca\ud83c\udffc\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "\ud83c\udfca\ud83c\udffd\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "\ud83c\udfca\ud83c\udffe\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "\ud83c\udfca\ud83c\udfff\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "\ud83c\udfca"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "\ud83c\udfca\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "\ud83c\udfca\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "\ud83c\udfca\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "\ud83c\udfca\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "\ud83c\udfca\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "\ud83e\udd3d\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "\ud83e\udd3d\ud83c\udffb\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "\ud83e\udd3d\ud83c\udffc\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "\ud83e\udd3d\ud83c\udffd\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "\ud83e\udd3d\ud83c\udffe\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "\ud83e\udd3d\ud83c\udfff\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "\ud83e\udd3d\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "\ud83e\udd3d\ud83c\udffb\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "\ud83e\udd3d\ud83c\udffc\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "\ud83e\udd3d\ud83c\udffd\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "\ud83e\udd3d\ud83c\udffe\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "\ud83e\udd3d\ud83c\udfff\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "\ud83d\udea3\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "\ud83d\udea3\ud83c\udffb\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "\ud83d\udea3\ud83c\udffc\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "\ud83d\udea3\ud83c\udffd\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "\ud83d\udea3\ud83c\udffe\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "\ud83d\udea3\ud83c\udfff\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "\ud83d\udea3"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "\ud83d\udea3\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "\ud83d\udea3\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "\ud83d\udea3\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "\ud83d\udea3\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "\ud83d\udea3\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "\ud83c\udfc7"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "\ud83c\udfc7\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "\ud83c\udfc7\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "\ud83c\udfc7\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "\ud83c\udfc7\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "\ud83c\udfc7\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "\ud83d\udeb4\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "\ud83d\udeb4\ud83c\udffb\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "\ud83d\udeb4\ud83c\udffc\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "\ud83d\udeb4\ud83c\udffd\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "\ud83d\udeb4\ud83c\udffe\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "\ud83d\udeb4\ud83c\udfff\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "\ud83d\udeb4"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "\ud83d\udeb4\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "\ud83d\udeb4\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "\ud83d\udeb4\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "\ud83d\udeb4\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "\ud83d\udeb4\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "\ud83d\udeb5\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "\ud83d\udeb5\ud83c\udffb\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "\ud83d\udeb5\ud83c\udffc\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "\ud83d\udeb5\ud83c\udffd\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "\ud83d\udeb5\ud83c\udffe\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "\ud83d\udeb5\ud83c\udfff\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "\ud83d\udeb5"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "\ud83d\udeb5\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "\ud83d\udeb5\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "\ud83d\udeb5\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "\ud83d\udeb5\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "\ud83d\udeb5\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "\ud83c\udfbd"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "\ud83c\udfc5"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "\ud83c\udf96"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "\ud83e\udd47"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "\ud83e\udd48"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "\ud83e\udd49"

    aput-object v4, v2, v3

    const/16 v3, 0x100

    const-string/jumbo v4, "\ud83c\udfc6"

    aput-object v4, v2, v3

    const/16 v3, 0x101

    const-string/jumbo v4, "\ud83c\udff5"

    aput-object v4, v2, v3

    const/16 v3, 0x102

    const-string/jumbo v4, "\ud83c\udf97"

    aput-object v4, v2, v3

    const/16 v3, 0x103

    const-string/jumbo v4, "\ud83c\udfab"

    aput-object v4, v2, v3

    const/16 v3, 0x104

    const-string/jumbo v4, "\ud83c\udf9f"

    aput-object v4, v2, v3

    const/16 v3, 0x105

    const-string/jumbo v4, "\ud83c\udfaa"

    aput-object v4, v2, v3

    const/16 v3, 0x106

    const-string/jumbo v4, "\ud83e\udd39\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x107

    const-string/jumbo v4, "\ud83e\udd39\ud83c\udffb\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x108

    const-string/jumbo v4, "\ud83e\udd39\ud83c\udffc\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x109

    const-string/jumbo v4, "\ud83e\udd39\ud83c\udffd\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x10a

    const-string/jumbo v4, "\ud83e\udd39\ud83c\udffe\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x10b

    const-string/jumbo v4, "\ud83e\udd39\ud83c\udfff\u200d\u2640"

    aput-object v4, v2, v3

    const/16 v3, 0x10c

    const-string/jumbo v4, "\ud83e\udd39\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x10d

    const-string/jumbo v4, "\ud83e\udd39\ud83c\udffb\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x10e

    const-string/jumbo v4, "\ud83e\udd39\ud83c\udffc\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x10f

    const-string/jumbo v4, "\ud83e\udd39\ud83c\udffd\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x110

    const-string/jumbo v4, "\ud83e\udd39\ud83c\udffe\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x111

    const-string/jumbo v4, "\ud83e\udd39\ud83c\udfff\u200d\u2642"

    aput-object v4, v2, v3

    const/16 v3, 0x112

    const-string/jumbo v4, "\ud83c\udfad"

    aput-object v4, v2, v3

    const/16 v3, 0x113

    const-string/jumbo v4, "\ud83c\udfa8"

    aput-object v4, v2, v3

    const/16 v3, 0x114

    const-string/jumbo v4, "\ud83c\udfac"

    aput-object v4, v2, v3

    const/16 v3, 0x115

    const-string/jumbo v4, "\ud83c\udfa4"

    aput-object v4, v2, v3

    const/16 v3, 0x116

    const-string/jumbo v4, "\ud83c\udfa7"

    aput-object v4, v2, v3

    const/16 v3, 0x117

    const-string/jumbo v4, "\ud83c\udfbc"

    aput-object v4, v2, v3

    const/16 v3, 0x118

    const-string/jumbo v4, "\ud83c\udfb9"

    aput-object v4, v2, v3

    const/16 v3, 0x119

    const-string/jumbo v4, "\ud83e\udd41"

    aput-object v4, v2, v3

    const/16 v3, 0x11a

    const-string/jumbo v4, "\ud83c\udfb7"

    aput-object v4, v2, v3

    const/16 v3, 0x11b

    const-string/jumbo v4, "\ud83c\udfba"

    aput-object v4, v2, v3

    const/16 v3, 0x11c

    const-string/jumbo v4, "\ud83c\udfb8"

    aput-object v4, v2, v3

    const/16 v3, 0x11d

    const-string/jumbo v4, "\ud83c\udfbb"

    aput-object v4, v2, v3

    const/16 v3, 0x11e

    const-string/jumbo v4, "\ud83c\udfb2"

    aput-object v4, v2, v3

    const/16 v3, 0x11f

    const-string/jumbo v4, "\ud83c\udfaf"

    aput-object v4, v2, v3

    const/16 v3, 0x120

    const-string/jumbo v4, "\ud83c\udfb3"

    aput-object v4, v2, v3

    const/16 v3, 0x121

    const-string/jumbo v4, "\ud83c\udfae"

    aput-object v4, v2, v3

    const/16 v3, 0x122

    const-string/jumbo v4, "\ud83c\udfb0"

    aput-object v4, v2, v3

    aput-object v2, v1, v8

    const/16 v2, 0x174

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "\ud83d\ude97"

    aput-object v3, v2, v7

    const-string/jumbo v3, "\ud83d\ude95"

    aput-object v3, v2, v5

    const-string/jumbo v3, "\ud83d\ude99"

    aput-object v3, v2, v8

    const-string/jumbo v3, "\ud83d\ude8c"

    aput-object v3, v2, v6

    const-string/jumbo v3, "\ud83d\ude8e"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "\ud83c\udfce"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "\ud83d\ude93"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "\ud83d\ude91"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "\ud83d\ude92"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "\ud83d\ude90"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "\ud83d\ude9a"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "\ud83d\ude9b"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "\ud83d\ude9c"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "\ud83d\udef4"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "\ud83d\udeb2"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "\ud83d\udef5"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "\ud83c\udfcd"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "\ud83d\udea8"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "\ud83d\ude94"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "\ud83d\ude8d"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "\ud83d\ude98"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "\ud83d\ude96"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "\ud83d\udea1"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "\ud83d\udea0"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "\ud83d\ude9f"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "\ud83d\ude83"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "\ud83d\ude8b"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "\ud83d\ude9e"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "\ud83d\ude9d"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "\ud83d\ude84"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "\ud83d\ude85"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "\ud83d\ude88"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "\ud83d\ude82"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "\ud83d\ude86"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "\ud83d\ude87"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "\ud83d\ude8a"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "\ud83d\ude89"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "\ud83d\ude81"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "\ud83d\udee9"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "\u2708"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "\ud83d\udeeb"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "\ud83d\udeec"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "\ud83d\ude80"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "\ud83d\udef0"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "\ud83d\udcba"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "\ud83d\udef6"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "\u26f5"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "\ud83d\udee5"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "\ud83d\udea4"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "\ud83d\udef3"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "\u26f4"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "\ud83d\udea2"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "\u2693"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "\ud83d\udea7"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "\u26fd"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "\ud83d\ude8f"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "\ud83d\udea6"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "\ud83d\udea5"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "\ud83d\uddfa"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "\ud83d\uddff"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "\ud83d\uddfd"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "\u26f2"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "\ud83d\uddfc"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "\ud83c\udff0"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "\ud83c\udfef"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "\ud83c\udfdf"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "\ud83c\udfa1"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "\ud83c\udfa2"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "\ud83c\udfa0"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "\u26f1"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "\ud83c\udfd6"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "\ud83c\udfdd"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "\u26f0"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "\ud83c\udfd4"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "\ud83d\uddfb"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "\ud83c\udf0b"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "\ud83c\udfdc"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "\ud83c\udfd5"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "\u26fa"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "\ud83d\udee4"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "\ud83d\udee3"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "\ud83c\udfd7"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "\ud83c\udfed"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "\ud83c\udfe0"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "\ud83c\udfe1"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "\ud83c\udfd8"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "\ud83c\udfda"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "\ud83c\udfe2"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "\ud83c\udfec"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "\ud83c\udfe3"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "\ud83c\udfe4"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "\ud83c\udfe5"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "\ud83c\udfe6"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "\ud83c\udfe8"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "\ud83c\udfea"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "\ud83c\udfeb"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "\ud83c\udfe9"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "\ud83d\udc92"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "\ud83c\udfdb"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "\u26ea"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "\ud83d\udd4c"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "\ud83d\udd4d"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "\ud83d\udd4b"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "\u26e9"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "\ud83d\uddfe"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "\ud83c\udf91"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "\ud83c\udfde"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "\ud83c\udf05"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "\ud83c\udf04"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "\ud83c\udf20"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "\ud83c\udf87"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "\ud83c\udf86"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "\ud83c\udf07"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "\ud83c\udf06"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "\ud83c\udfd9"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "\ud83c\udf03"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "\ud83c\udf0c"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "\ud83c\udf09"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "\ud83c\udf01"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "\ud83c\udff3"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "\ud83c\udff4"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "\ud83c\udfc1"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "\ud83d\udea9"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "\ud83c\udff3\u200d\ud83c\udf08"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "\ud83c\udde6\ud83c\uddfa"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "\ud83c\udde6\ud83c\uddf9"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "\ud83c\udde6\ud83c\uddff"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "\ud83c\udde6\ud83c\uddfd"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "\ud83c\udde6\ud83c\uddf1"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "\ud83c\udde9\ud83c\uddff"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "\ud83c\udde6\ud83c\uddf8"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "\ud83c\udde6\ud83c\uddee"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "\ud83c\udde6\ud83c\uddf4"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "\ud83c\udde6\ud83c\udde9"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "\ud83c\udde6\ud83c\uddf6"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "\ud83c\udde6\ud83c\uddec"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "\ud83c\udde6\ud83c\uddf7"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "\ud83c\udde6\ud83c\uddf2"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "\ud83c\udde6\ud83c\uddfc"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "\ud83c\udde6\ud83c\uddeb"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "\ud83c\udde7\ud83c\uddf8"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "\ud83c\udde7\ud83c\udde9"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "\ud83c\udde7\ud83c\udde7"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "\ud83c\udde7\ud83c\udded"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "\ud83c\udde7\ud83c\uddfe"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "\ud83c\udde7\ud83c\uddff"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "\ud83c\udde7\ud83c\uddea"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "\ud83c\udde7\ud83c\uddef"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "\ud83c\udde7\ud83c\uddf2"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "\ud83c\udde7\ud83c\uddec"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "\ud83c\udde7\ud83c\uddf4"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "\ud83c\udde7\ud83c\uddf6"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "\ud83c\udde7\ud83c\udde6"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "\ud83c\udde7\ud83c\uddfc"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "\ud83c\udde7\ud83c\uddf7"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "\ud83c\uddee\ud83c\uddf4"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "\ud83c\udde7\ud83c\uddf3"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "\ud83c\udde7\ud83c\uddeb"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "\ud83c\udde7\ud83c\uddee"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "\ud83c\udde7\ud83c\uddf9"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "\ud83c\uddfb\ud83c\uddfa"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "\ud83c\uddfb\ud83c\udde6"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "\ud83c\uddec\ud83c\udde7"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "\ud83c\udded\ud83c\uddfa"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "\ud83c\uddfb\ud83c\uddea"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "\ud83c\uddfb\ud83c\uddec"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "\ud83c\uddfb\ud83c\uddee"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "\ud83c\uddf9\ud83c\uddf1"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "\ud83c\uddfb\ud83c\uddf3"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "\ud83c\uddec\ud83c\udde6"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "\ud83c\udded\ud83c\uddf9"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "\ud83c\uddec\ud83c\uddfe"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "\ud83c\uddec\ud83c\uddf2"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "\ud83c\uddec\ud83c\udded"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "\ud83c\uddec\ud83c\uddf5"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "\ud83c\uddec\ud83c\uddf9"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "\ud83c\uddec\ud83c\uddf3"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "\ud83c\uddec\ud83c\uddfc"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "\ud83c\udde9\ud83c\uddea"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "\ud83c\uddec\ud83c\uddec"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "\ud83c\uddec\ud83c\uddee"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "\ud83c\udded\ud83c\uddf3"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "\ud83c\udded\ud83c\uddf0"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "\ud83c\uddec\ud83c\udde9"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "\ud83c\uddec\ud83c\uddf1"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "\ud83c\uddec\ud83c\uddf7"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "\ud83c\uddec\ud83c\uddea"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "\ud83c\uddec\ud83c\uddfa"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "\ud83c\udde9\ud83c\uddf0"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "\ud83c\uddef\ud83c\uddea"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "\ud83c\udde9\ud83c\uddef"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "\ud83c\udde9\ud83c\uddf2"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "\ud83c\udde9\ud83c\uddf4"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "\ud83c\uddea\ud83c\uddfa"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "\ud83c\uddea\ud83c\uddec"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "\ud83c\uddff\ud83c\uddf2"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "\ud83c\uddea\ud83c\udded"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "\ud83c\uddff\ud83c\uddfc"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "\ud83c\uddee\ud83c\uddf1"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "\ud83c\uddee\ud83c\uddf3"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "\ud83c\uddee\ud83c\udde9"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "\ud83c\uddef\ud83c\uddf4"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "\ud83c\uddee\ud83c\uddf6"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "\ud83c\uddee\ud83c\uddf7"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "\ud83c\uddee\ud83c\uddea"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "\ud83c\uddee\ud83c\uddf8"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "\ud83c\uddea\ud83c\uddf8"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "\ud83c\uddee\ud83c\uddf9"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "\ud83c\uddfe\ud83c\uddea"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "\ud83c\udde8\ud83c\uddfb"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "\ud83c\uddf0\ud83c\uddff"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "\ud83c\uddf0\ud83c\uddfe"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "\ud83c\uddf0\ud83c\udded"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "\ud83c\udde8\ud83c\uddf2"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "\ud83c\udde8\ud83c\udde6"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "\ud83c\uddee\ud83c\udde8"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "\ud83c\uddf6\ud83c\udde6"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "\ud83c\uddf0\ud83c\uddea"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "\ud83c\udde8\ud83c\uddfe"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "\ud83c\uddf0\ud83c\uddec"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "\ud83c\uddf0\ud83c\uddee"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "\ud83c\udde8\ud83c\uddf3"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "\ud83c\uddf0\ud83c\uddf5"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "\ud83c\udde8\ud83c\udde8"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "\ud83c\udde8\ud83c\uddf4"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "\ud83c\uddf0\ud83c\uddf2"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "\ud83c\udde8\ud83c\uddec"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "\ud83c\udde8\ud83c\udde9"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "\ud83c\uddfd\ud83c\uddf0"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "\ud83c\udde8\ud83c\uddf7"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "\ud83c\udde8\ud83c\uddee"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "\ud83c\udde8\ud83c\uddfa"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "\ud83c\uddf0\ud83c\uddfc"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "\ud83c\udde8\ud83c\uddfc"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "\ud83c\uddf1\ud83c\udde6"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "\ud83c\uddf1\ud83c\uddfb"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "\ud83c\uddf1\ud83c\uddf8"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "\ud83c\uddf1\ud83c\uddf7"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "\ud83c\uddf1\ud83c\udde7"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "\ud83c\uddf1\ud83c\uddfe"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "\ud83c\uddf1\ud83c\uddf9"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "\ud83c\uddf1\ud83c\uddee"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "\ud83c\uddf1\ud83c\uddfa"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "\ud83c\uddf2\ud83c\uddfa"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "\ud83c\uddf2\ud83c\uddf7"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "\ud83c\uddf2\ud83c\uddec"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "\ud83c\uddfe\ud83c\uddf9"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "\ud83c\uddf2\ud83c\uddf4"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "\ud83c\uddf2\ud83c\uddf0"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "\ud83c\uddf2\ud83c\uddfc"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "\ud83c\uddf2\ud83c\uddfe"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "\ud83c\uddf2\ud83c\uddf1"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "\ud83c\uddf2\ud83c\uddfb"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "\ud83c\uddf2\ud83c\uddf9"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "\ud83c\uddf2\ud83c\udde6"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "\ud83c\uddf2\ud83c\uddf6"

    aput-object v4, v2, v3

    const/16 v3, 0x100

    const-string/jumbo v4, "\ud83c\uddf2\ud83c\udded"

    aput-object v4, v2, v3

    const/16 v3, 0x101

    const-string/jumbo v4, "\ud83c\uddf2\ud83c\uddfd"

    aput-object v4, v2, v3

    const/16 v3, 0x102

    const-string/jumbo v4, "\ud83c\uddeb\ud83c\uddf2"

    aput-object v4, v2, v3

    const/16 v3, 0x103

    const-string/jumbo v4, "\ud83c\uddf2\ud83c\uddff"

    aput-object v4, v2, v3

    const/16 v3, 0x104

    const-string/jumbo v4, "\ud83c\uddf2\ud83c\udde9"

    aput-object v4, v2, v3

    const/16 v3, 0x105

    const-string/jumbo v4, "\ud83c\uddf2\ud83c\udde8"

    aput-object v4, v2, v3

    const/16 v3, 0x106

    const-string/jumbo v4, "\ud83c\uddf2\ud83c\uddf3"

    aput-object v4, v2, v3

    const/16 v3, 0x107

    const-string/jumbo v4, "\ud83c\uddf2\ud83c\uddf8"

    aput-object v4, v2, v3

    const/16 v3, 0x108

    const-string/jumbo v4, "\ud83c\uddf2\ud83c\uddf2"

    aput-object v4, v2, v3

    const/16 v3, 0x109

    const-string/jumbo v4, "\ud83c\uddf3\ud83c\udde6"

    aput-object v4, v2, v3

    const/16 v3, 0x10a

    const-string/jumbo v4, "\ud83c\uddf3\ud83c\uddf7"

    aput-object v4, v2, v3

    const/16 v3, 0x10b

    const-string/jumbo v4, "\ud83c\uddf3\ud83c\uddf5"

    aput-object v4, v2, v3

    const/16 v3, 0x10c

    const-string/jumbo v4, "\ud83c\uddf3\ud83c\uddea"

    aput-object v4, v2, v3

    const/16 v3, 0x10d

    const-string/jumbo v4, "\ud83c\uddf3\ud83c\uddec"

    aput-object v4, v2, v3

    const/16 v3, 0x10e

    const-string/jumbo v4, "\ud83c\uddf3\ud83c\uddf1"

    aput-object v4, v2, v3

    const/16 v3, 0x10f

    const-string/jumbo v4, "\ud83c\uddf3\ud83c\uddee"

    aput-object v4, v2, v3

    const/16 v3, 0x110

    const-string/jumbo v4, "\ud83c\uddf3\ud83c\uddfa"

    aput-object v4, v2, v3

    const/16 v3, 0x111

    const-string/jumbo v4, "\ud83c\uddf3\ud83c\uddff"

    aput-object v4, v2, v3

    const/16 v3, 0x112

    const-string/jumbo v4, "\ud83c\uddf3\ud83c\udde8"

    aput-object v4, v2, v3

    const/16 v3, 0x113

    const-string/jumbo v4, "\ud83c\uddf3\ud83c\uddf4"

    aput-object v4, v2, v3

    const/16 v3, 0x114

    const-string/jumbo v4, "\ud83c\uddee\ud83c\uddf2"

    aput-object v4, v2, v3

    const/16 v3, 0x115

    const-string/jumbo v4, "\ud83c\uddf3\ud83c\uddeb"

    aput-object v4, v2, v3

    const/16 v3, 0x116

    const-string/jumbo v4, "\ud83c\udde8\ud83c\uddfd"

    aput-object v4, v2, v3

    const/16 v3, 0x117

    const-string/jumbo v4, "\ud83c\uddf8\ud83c\udded"

    aput-object v4, v2, v3

    const/16 v3, 0x118

    const-string/jumbo v4, "\ud83c\udde8\ud83c\uddf0"

    aput-object v4, v2, v3

    const/16 v3, 0x119

    const-string/jumbo v4, "\ud83c\uddf9\ud83c\udde8"

    aput-object v4, v2, v3

    const/16 v3, 0x11a

    const-string/jumbo v4, "\ud83c\udde6\ud83c\uddea"

    aput-object v4, v2, v3

    const/16 v3, 0x11b

    const-string/jumbo v4, "\ud83c\uddf4\ud83c\uddf2"

    aput-object v4, v2, v3

    const/16 v3, 0x11c

    const-string/jumbo v4, "\ud83c\uddf5\ud83c\uddf3"

    aput-object v4, v2, v3

    const/16 v3, 0x11d

    const-string/jumbo v4, "\ud83c\uddf5\ud83c\uddf0"

    aput-object v4, v2, v3

    const/16 v3, 0x11e

    const-string/jumbo v4, "\ud83c\uddf5\ud83c\uddfc"

    aput-object v4, v2, v3

    const/16 v3, 0x11f

    const-string/jumbo v4, "\ud83c\uddf5\ud83c\uddf8"

    aput-object v4, v2, v3

    const/16 v3, 0x120

    const-string/jumbo v4, "\ud83c\uddf5\ud83c\udde6"

    aput-object v4, v2, v3

    const/16 v3, 0x121

    const-string/jumbo v4, "\ud83c\uddf5\ud83c\uddec"

    aput-object v4, v2, v3

    const/16 v3, 0x122

    const-string/jumbo v4, "\ud83c\uddf5\ud83c\uddfe"

    aput-object v4, v2, v3

    const/16 v3, 0x123

    const-string/jumbo v4, "\ud83c\uddf5\ud83c\uddea"

    aput-object v4, v2, v3

    const/16 v3, 0x124

    const-string/jumbo v4, "\ud83c\uddf5\ud83c\uddf1"

    aput-object v4, v2, v3

    const/16 v3, 0x125

    const-string/jumbo v4, "\ud83c\uddf5\ud83c\uddf9"

    aput-object v4, v2, v3

    const/16 v3, 0x126

    const-string/jumbo v4, "\ud83c\uddf5\ud83c\uddf7"

    aput-object v4, v2, v3

    const/16 v3, 0x127

    const-string/jumbo v4, "\ud83c\uddf0\ud83c\uddf7"

    aput-object v4, v2, v3

    const/16 v3, 0x128

    const-string/jumbo v4, "\ud83c\uddf7\ud83c\uddea"

    aput-object v4, v2, v3

    const/16 v3, 0x129

    const-string/jumbo v4, "\ud83c\uddf7\ud83c\uddfa"

    aput-object v4, v2, v3

    const/16 v3, 0x12a

    const-string/jumbo v4, "\ud83c\uddf7\ud83c\uddfc"

    aput-object v4, v2, v3

    const/16 v3, 0x12b

    const-string/jumbo v4, "\ud83c\uddf7\ud83c\uddf4"

    aput-object v4, v2, v3

    const/16 v3, 0x12c

    const-string/jumbo v4, "\ud83c\uddf8\ud83c\uddfb"

    aput-object v4, v2, v3

    const/16 v3, 0x12d

    const-string/jumbo v4, "\ud83c\uddfc\ud83c\uddf8"

    aput-object v4, v2, v3

    const/16 v3, 0x12e

    const-string/jumbo v4, "\ud83c\uddf8\ud83c\uddf2"

    aput-object v4, v2, v3

    const/16 v3, 0x12f

    const-string/jumbo v4, "\ud83c\uddf8\ud83c\uddf9"

    aput-object v4, v2, v3

    const/16 v3, 0x130

    const-string/jumbo v4, "\ud83c\uddf8\ud83c\udde6"

    aput-object v4, v2, v3

    const/16 v3, 0x131

    const-string/jumbo v4, "\ud83c\uddf8\ud83c\uddff"

    aput-object v4, v2, v3

    const/16 v3, 0x132

    const-string/jumbo v4, "\ud83c\uddf2\ud83c\uddf5"

    aput-object v4, v2, v3

    const/16 v3, 0x133

    const-string/jumbo v4, "\ud83c\uddf8\ud83c\udde8"

    aput-object v4, v2, v3

    const/16 v3, 0x134

    const-string/jumbo v4, "\ud83c\udde7\ud83c\uddf1"

    aput-object v4, v2, v3

    const/16 v3, 0x135

    const-string/jumbo v4, "\ud83c\uddf5\ud83c\uddf2"

    aput-object v4, v2, v3

    const/16 v3, 0x136

    const-string/jumbo v4, "\ud83c\uddf8\ud83c\uddf3"

    aput-object v4, v2, v3

    const/16 v3, 0x137

    const-string/jumbo v4, "\ud83c\uddfb\ud83c\udde8"

    aput-object v4, v2, v3

    const/16 v3, 0x138

    const-string/jumbo v4, "\ud83c\uddf0\ud83c\uddf3"

    aput-object v4, v2, v3

    const/16 v3, 0x139

    const-string/jumbo v4, "\ud83c\uddf1\ud83c\udde8"

    aput-object v4, v2, v3

    const/16 v3, 0x13a

    const-string/jumbo v4, "\ud83c\uddf7\ud83c\uddf8"

    aput-object v4, v2, v3

    const/16 v3, 0x13b

    const-string/jumbo v4, "\ud83c\uddf8\ud83c\uddec"

    aput-object v4, v2, v3

    const/16 v3, 0x13c

    const-string/jumbo v4, "\ud83c\uddf8\ud83c\uddfd"

    aput-object v4, v2, v3

    const/16 v3, 0x13d

    const-string/jumbo v4, "\ud83c\uddf8\ud83c\uddfe"

    aput-object v4, v2, v3

    const/16 v3, 0x13e

    const-string/jumbo v4, "\ud83c\uddf8\ud83c\uddf0"

    aput-object v4, v2, v3

    const/16 v3, 0x13f

    const-string/jumbo v4, "\ud83c\uddf8\ud83c\uddee"

    aput-object v4, v2, v3

    const/16 v3, 0x140

    const-string/jumbo v4, "\ud83c\uddfa\ud83c\uddf8"

    aput-object v4, v2, v3

    const/16 v3, 0x141

    const-string/jumbo v4, "\ud83c\uddf8\ud83c\udde7"

    aput-object v4, v2, v3

    const/16 v3, 0x142

    const-string/jumbo v4, "\ud83c\uddf8\ud83c\uddf4"

    aput-object v4, v2, v3

    const/16 v3, 0x143

    const-string/jumbo v4, "\ud83c\uddf8\ud83c\udde9"

    aput-object v4, v2, v3

    const/16 v3, 0x144

    const-string/jumbo v4, "\ud83c\uddf8\ud83c\uddf7"

    aput-object v4, v2, v3

    const/16 v3, 0x145

    const-string/jumbo v4, "\ud83c\uddf8\ud83c\uddf1"

    aput-object v4, v2, v3

    const/16 v3, 0x146

    const-string/jumbo v4, "\ud83c\uddf9\ud83c\uddef"

    aput-object v4, v2, v3

    const/16 v3, 0x147

    const-string/jumbo v4, "\ud83c\uddf9\ud83c\udded"

    aput-object v4, v2, v3

    const/16 v3, 0x148

    const-string/jumbo v4, "\ud83c\uddf9\ud83c\uddfc"

    aput-object v4, v2, v3

    const/16 v3, 0x149

    const-string/jumbo v4, "\ud83c\uddf9\ud83c\uddff"

    aput-object v4, v2, v3

    const/16 v3, 0x14a

    const-string/jumbo v4, "\ud83c\uddf9\ud83c\uddec"

    aput-object v4, v2, v3

    const/16 v3, 0x14b

    const-string/jumbo v4, "\ud83c\uddf9\ud83c\uddf0"

    aput-object v4, v2, v3

    const/16 v3, 0x14c

    const-string/jumbo v4, "\ud83c\uddf9\ud83c\uddf4"

    aput-object v4, v2, v3

    const/16 v3, 0x14d

    const-string/jumbo v4, "\ud83c\uddf9\ud83c\uddf9"

    aput-object v4, v2, v3

    const/16 v3, 0x14e

    const-string/jumbo v4, "\ud83c\uddf9\ud83c\uddfb"

    aput-object v4, v2, v3

    const/16 v3, 0x14f

    const-string/jumbo v4, "\ud83c\uddf9\ud83c\uddf3"

    aput-object v4, v2, v3

    const/16 v3, 0x150

    const-string/jumbo v4, "\ud83c\uddf9\ud83c\uddf2"

    aput-object v4, v2, v3

    const/16 v3, 0x151

    const-string/jumbo v4, "\ud83c\uddf9\ud83c\uddf7"

    aput-object v4, v2, v3

    const/16 v3, 0x152

    const-string/jumbo v4, "\ud83c\uddfa\ud83c\uddec"

    aput-object v4, v2, v3

    const/16 v3, 0x153

    const-string/jumbo v4, "\ud83c\uddfa\ud83c\uddff"

    aput-object v4, v2, v3

    const/16 v3, 0x154

    const-string/jumbo v4, "\ud83c\uddfa\ud83c\udde6"

    aput-object v4, v2, v3

    const/16 v3, 0x155

    const-string/jumbo v4, "\ud83c\uddfc\ud83c\uddeb"

    aput-object v4, v2, v3

    const/16 v3, 0x156

    const-string/jumbo v4, "\ud83c\uddfa\ud83c\uddfe"

    aput-object v4, v2, v3

    const/16 v3, 0x157

    const-string/jumbo v4, "\ud83c\uddeb\ud83c\uddf4"

    aput-object v4, v2, v3

    const/16 v3, 0x158

    const-string/jumbo v4, "\ud83c\uddeb\ud83c\uddef"

    aput-object v4, v2, v3

    const/16 v3, 0x159

    const-string/jumbo v4, "\ud83c\uddf5\ud83c\udded"

    aput-object v4, v2, v3

    const/16 v3, 0x15a

    const-string/jumbo v4, "\ud83c\uddeb\ud83c\uddee"

    aput-object v4, v2, v3

    const/16 v3, 0x15b

    const-string/jumbo v4, "\ud83c\uddeb\ud83c\uddf0"

    aput-object v4, v2, v3

    const/16 v3, 0x15c

    const-string/jumbo v4, "\ud83c\uddeb\ud83c\uddf7"

    aput-object v4, v2, v3

    const/16 v3, 0x15d

    const-string/jumbo v4, "\ud83c\uddec\ud83c\uddeb"

    aput-object v4, v2, v3

    const/16 v3, 0x15e

    const-string/jumbo v4, "\ud83c\uddf5\ud83c\uddeb"

    aput-object v4, v2, v3

    const/16 v3, 0x15f

    const-string/jumbo v4, "\ud83c\uddf9\ud83c\uddeb"

    aput-object v4, v2, v3

    const/16 v3, 0x160

    const-string/jumbo v4, "\ud83c\udded\ud83c\uddf7"

    aput-object v4, v2, v3

    const/16 v3, 0x161

    const-string/jumbo v4, "\ud83c\udde8\ud83c\uddeb"

    aput-object v4, v2, v3

    const/16 v3, 0x162

    const-string/jumbo v4, "\ud83c\uddf9\ud83c\udde9"

    aput-object v4, v2, v3

    const/16 v3, 0x163

    const-string/jumbo v4, "\ud83c\uddf2\ud83c\uddea"

    aput-object v4, v2, v3

    const/16 v3, 0x164

    const-string/jumbo v4, "\ud83c\udde8\ud83c\uddff"

    aput-object v4, v2, v3

    const/16 v3, 0x165

    const-string/jumbo v4, "\ud83c\udde8\ud83c\uddf1"

    aput-object v4, v2, v3

    const/16 v3, 0x166

    const-string/jumbo v4, "\ud83c\udde8\ud83c\udded"

    aput-object v4, v2, v3

    const/16 v3, 0x167

    const-string/jumbo v4, "\ud83c\uddf8\ud83c\uddea"

    aput-object v4, v2, v3

    const/16 v3, 0x168

    const-string/jumbo v4, "\ud83c\uddf1\ud83c\uddf0"

    aput-object v4, v2, v3

    const/16 v3, 0x169

    const-string/jumbo v4, "\ud83c\uddea\ud83c\udde8"

    aput-object v4, v2, v3

    const/16 v3, 0x16a

    const-string/jumbo v4, "\ud83c\uddec\ud83c\uddf6"

    aput-object v4, v2, v3

    const/16 v3, 0x16b

    const-string/jumbo v4, "\ud83c\uddea\ud83c\uddf7"

    aput-object v4, v2, v3

    const/16 v3, 0x16c

    const-string/jumbo v4, "\ud83c\uddea\ud83c\uddea"

    aput-object v4, v2, v3

    const/16 v3, 0x16d

    const-string/jumbo v4, "\ud83c\uddea\ud83c\uddf9"

    aput-object v4, v2, v3

    const/16 v3, 0x16e

    const-string/jumbo v4, "\ud83c\uddff\ud83c\udde6"

    aput-object v4, v2, v3

    const/16 v3, 0x16f

    const-string/jumbo v4, "\ud83c\uddec\ud83c\uddf8"

    aput-object v4, v2, v3

    const/16 v3, 0x170

    const-string/jumbo v4, "\ud83c\uddf8\ud83c\uddf8"

    aput-object v4, v2, v3

    const/16 v3, 0x171

    const-string/jumbo v4, "\ud83c\uddef\ud83c\uddf2"

    aput-object v4, v2, v3

    const/16 v3, 0x172

    const-string/jumbo v4, "\ud83c\uddef\ud83c\uddf5"

    aput-object v4, v2, v3

    const/16 v3, 0x173

    const-string/jumbo v4, "\ud83c\udf8c"

    aput-object v4, v2, v3

    aput-object v2, v1, v6

    const/16 v2, 0x1b2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "\ud83d\udc9f"

    aput-object v3, v2, v7

    const-string/jumbo v3, "\u262e"

    aput-object v3, v2, v5

    const-string/jumbo v3, "\u271d"

    aput-object v3, v2, v8

    const-string/jumbo v3, "\u262a"

    aput-object v3, v2, v6

    const-string/jumbo v3, "\ud83d\udd49"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string/jumbo v4, "\u2638"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string/jumbo v4, "\u2721"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string/jumbo v4, "\ud83d\udd2f"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string/jumbo v4, "\ud83d\udd4e"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string/jumbo v4, "\u262f"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string/jumbo v4, "\u2626"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string/jumbo v4, "\ud83d\uded0"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string/jumbo v4, "\u26ce"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string/jumbo v4, "\u2648"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string/jumbo v4, "\u2649"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string/jumbo v4, "\u264a"

    aput-object v4, v2, v3

    const/16 v3, 0x10

    const-string/jumbo v4, "\u264b"

    aput-object v4, v2, v3

    const/16 v3, 0x11

    const-string/jumbo v4, "\u264c"

    aput-object v4, v2, v3

    const/16 v3, 0x12

    const-string/jumbo v4, "\u264d"

    aput-object v4, v2, v3

    const/16 v3, 0x13

    const-string/jumbo v4, "\u264e"

    aput-object v4, v2, v3

    const/16 v3, 0x14

    const-string/jumbo v4, "\u264f"

    aput-object v4, v2, v3

    const/16 v3, 0x15

    const-string/jumbo v4, "\u2650"

    aput-object v4, v2, v3

    const/16 v3, 0x16

    const-string/jumbo v4, "\u2651"

    aput-object v4, v2, v3

    const/16 v3, 0x17

    const-string/jumbo v4, "\u2652"

    aput-object v4, v2, v3

    const/16 v3, 0x18

    const-string/jumbo v4, "\u2653"

    aput-object v4, v2, v3

    const/16 v3, 0x19

    const-string/jumbo v4, "\ud83c\udd94"

    aput-object v4, v2, v3

    const/16 v3, 0x1a

    const-string/jumbo v4, "\u269b"

    aput-object v4, v2, v3

    const/16 v3, 0x1b

    const-string/jumbo v4, "\ud83c\ude51"

    aput-object v4, v2, v3

    const/16 v3, 0x1c

    const-string/jumbo v4, "\u2622"

    aput-object v4, v2, v3

    const/16 v3, 0x1d

    const-string/jumbo v4, "\u2623"

    aput-object v4, v2, v3

    const/16 v3, 0x1e

    const-string/jumbo v4, "\ud83d\udcf4"

    aput-object v4, v2, v3

    const/16 v3, 0x1f

    const-string/jumbo v4, "\ud83d\udcf3"

    aput-object v4, v2, v3

    const/16 v3, 0x20

    const-string/jumbo v4, "\ud83c\ude36"

    aput-object v4, v2, v3

    const/16 v3, 0x21

    const-string/jumbo v4, "\ud83c\ude1a"

    aput-object v4, v2, v3

    const/16 v3, 0x22

    const-string/jumbo v4, "\ud83c\ude38"

    aput-object v4, v2, v3

    const/16 v3, 0x23

    const-string/jumbo v4, "\ud83c\ude3a"

    aput-object v4, v2, v3

    const/16 v3, 0x24

    const-string/jumbo v4, "\ud83c\ude37"

    aput-object v4, v2, v3

    const/16 v3, 0x25

    const-string/jumbo v4, "\u2734"

    aput-object v4, v2, v3

    const/16 v3, 0x26

    const-string/jumbo v4, "\ud83c\udd9a"

    aput-object v4, v2, v3

    const/16 v3, 0x27

    const-string/jumbo v4, "\ud83d\udcae"

    aput-object v4, v2, v3

    const/16 v3, 0x28

    const-string/jumbo v4, "\ud83c\ude50"

    aput-object v4, v2, v3

    const/16 v3, 0x29

    const-string/jumbo v4, "\u3299"

    aput-object v4, v2, v3

    const/16 v3, 0x2a

    const-string/jumbo v4, "\u3297"

    aput-object v4, v2, v3

    const/16 v3, 0x2b

    const-string/jumbo v4, "\ud83c\ude34"

    aput-object v4, v2, v3

    const/16 v3, 0x2c

    const-string/jumbo v4, "\ud83c\ude35"

    aput-object v4, v2, v3

    const/16 v3, 0x2d

    const-string/jumbo v4, "\ud83c\ude39"

    aput-object v4, v2, v3

    const/16 v3, 0x2e

    const-string/jumbo v4, "\ud83c\ude32"

    aput-object v4, v2, v3

    const/16 v3, 0x2f

    const-string/jumbo v4, "\ud83c\udd70"

    aput-object v4, v2, v3

    const/16 v3, 0x30

    const-string/jumbo v4, "\ud83c\udd71"

    aput-object v4, v2, v3

    const/16 v3, 0x31

    const-string/jumbo v4, "\ud83c\udd8e"

    aput-object v4, v2, v3

    const/16 v3, 0x32

    const-string/jumbo v4, "\ud83c\udd91"

    aput-object v4, v2, v3

    const/16 v3, 0x33

    const-string/jumbo v4, "\ud83c\udd7e"

    aput-object v4, v2, v3

    const/16 v3, 0x34

    const-string/jumbo v4, "\ud83c\udd98"

    aput-object v4, v2, v3

    const/16 v3, 0x35

    const-string/jumbo v4, "\u274c"

    aput-object v4, v2, v3

    const/16 v3, 0x36

    const-string/jumbo v4, "\u2b55"

    aput-object v4, v2, v3

    const/16 v3, 0x37

    const-string/jumbo v4, "\ud83d\uded1"

    aput-object v4, v2, v3

    const/16 v3, 0x38

    const-string/jumbo v4, "\u26d4"

    aput-object v4, v2, v3

    const/16 v3, 0x39

    const-string/jumbo v4, "\ud83d\udcdb"

    aput-object v4, v2, v3

    const/16 v3, 0x3a

    const-string/jumbo v4, "\ud83d\udeab"

    aput-object v4, v2, v3

    const/16 v3, 0x3b

    const-string/jumbo v4, "\ud83d\udcaf"

    aput-object v4, v2, v3

    const/16 v3, 0x3c

    const-string/jumbo v4, "\ud83d\udca2"

    aput-object v4, v2, v3

    const/16 v3, 0x3d

    const-string/jumbo v4, "\u2668"

    aput-object v4, v2, v3

    const/16 v3, 0x3e

    const-string/jumbo v4, "\ud83d\udeb7"

    aput-object v4, v2, v3

    const/16 v3, 0x3f

    const-string/jumbo v4, "\ud83d\udeaf"

    aput-object v4, v2, v3

    const/16 v3, 0x40

    const-string/jumbo v4, "\ud83d\udeb3"

    aput-object v4, v2, v3

    const/16 v3, 0x41

    const-string/jumbo v4, "\ud83d\udeb1"

    aput-object v4, v2, v3

    const/16 v3, 0x42

    const-string/jumbo v4, "\ud83d\udd1e"

    aput-object v4, v2, v3

    const/16 v3, 0x43

    const-string/jumbo v4, "\ud83d\udcf5"

    aput-object v4, v2, v3

    const/16 v3, 0x44

    const-string/jumbo v4, "\ud83d\udead"

    aput-object v4, v2, v3

    const/16 v3, 0x45

    const-string/jumbo v4, "\u2757"

    aput-object v4, v2, v3

    const/16 v3, 0x46

    const-string/jumbo v4, "\u2755"

    aput-object v4, v2, v3

    const/16 v3, 0x47

    const-string/jumbo v4, "\u2753"

    aput-object v4, v2, v3

    const/16 v3, 0x48

    const-string/jumbo v4, "\u2754"

    aput-object v4, v2, v3

    const/16 v3, 0x49

    const-string/jumbo v4, "\u203c"

    aput-object v4, v2, v3

    const/16 v3, 0x4a

    const-string/jumbo v4, "\u2049"

    aput-object v4, v2, v3

    const/16 v3, 0x4b

    const-string/jumbo v4, "\ud83d\udd05"

    aput-object v4, v2, v3

    const/16 v3, 0x4c

    const-string/jumbo v4, "\ud83d\udd06"

    aput-object v4, v2, v3

    const/16 v3, 0x4d

    const-string/jumbo v4, "\u303d"

    aput-object v4, v2, v3

    const/16 v3, 0x4e

    const-string/jumbo v4, "\u26a0"

    aput-object v4, v2, v3

    const/16 v3, 0x4f

    const-string/jumbo v4, "\ud83d\udeb8"

    aput-object v4, v2, v3

    const/16 v3, 0x50

    const-string/jumbo v4, "\ud83d\udd31"

    aput-object v4, v2, v3

    const/16 v3, 0x51

    const-string/jumbo v4, "\u269c"

    aput-object v4, v2, v3

    const/16 v3, 0x52

    const-string/jumbo v4, "\ud83d\udd30"

    aput-object v4, v2, v3

    const/16 v3, 0x53

    const-string/jumbo v4, "\u267b"

    aput-object v4, v2, v3

    const/16 v3, 0x54

    const-string/jumbo v4, "\u2705"

    aput-object v4, v2, v3

    const/16 v3, 0x55

    const-string/jumbo v4, "\ud83c\ude2f"

    aput-object v4, v2, v3

    const/16 v3, 0x56

    const-string/jumbo v4, "\ud83d\udcb9"

    aput-object v4, v2, v3

    const/16 v3, 0x57

    const-string/jumbo v4, "\u2747"

    aput-object v4, v2, v3

    const/16 v3, 0x58

    const-string/jumbo v4, "\u2733"

    aput-object v4, v2, v3

    const/16 v3, 0x59

    const-string/jumbo v4, "\u274e"

    aput-object v4, v2, v3

    const/16 v3, 0x5a

    const-string/jumbo v4, "\ud83c\udf10"

    aput-object v4, v2, v3

    const/16 v3, 0x5b

    const-string/jumbo v4, "\ud83d\udca0"

    aput-object v4, v2, v3

    const/16 v3, 0x5c

    const-string/jumbo v4, "\u24c2"

    aput-object v4, v2, v3

    const/16 v3, 0x5d

    const-string/jumbo v4, "\ud83c\udf00"

    aput-object v4, v2, v3

    const/16 v3, 0x5e

    const-string/jumbo v4, "\ud83d\udca4"

    aput-object v4, v2, v3

    const/16 v3, 0x5f

    const-string/jumbo v4, "\ud83c\udfe7"

    aput-object v4, v2, v3

    const/16 v3, 0x60

    const-string/jumbo v4, "\ud83d\udebe"

    aput-object v4, v2, v3

    const/16 v3, 0x61

    const-string/jumbo v4, "\u267f"

    aput-object v4, v2, v3

    const/16 v3, 0x62

    const-string/jumbo v4, "\ud83c\udd7f"

    aput-object v4, v2, v3

    const/16 v3, 0x63

    const-string/jumbo v4, "\ud83c\ude33"

    aput-object v4, v2, v3

    const/16 v3, 0x64

    const-string/jumbo v4, "\ud83c\ude02"

    aput-object v4, v2, v3

    const/16 v3, 0x65

    const-string/jumbo v4, "\ud83d\udec2"

    aput-object v4, v2, v3

    const/16 v3, 0x66

    const-string/jumbo v4, "\ud83d\udec3"

    aput-object v4, v2, v3

    const/16 v3, 0x67

    const-string/jumbo v4, "\ud83d\udec4"

    aput-object v4, v2, v3

    const/16 v3, 0x68

    const-string/jumbo v4, "\ud83d\udec5"

    aput-object v4, v2, v3

    const/16 v3, 0x69

    const-string/jumbo v4, "\ud83d\udeb9"

    aput-object v4, v2, v3

    const/16 v3, 0x6a

    const-string/jumbo v4, "\ud83d\udeba"

    aput-object v4, v2, v3

    const/16 v3, 0x6b

    const-string/jumbo v4, "\ud83d\udebc"

    aput-object v4, v2, v3

    const/16 v3, 0x6c

    const-string/jumbo v4, "\ud83d\udebb"

    aput-object v4, v2, v3

    const/16 v3, 0x6d

    const-string/jumbo v4, "\ud83d\udeae"

    aput-object v4, v2, v3

    const/16 v3, 0x6e

    const-string/jumbo v4, "\ud83c\udfa6"

    aput-object v4, v2, v3

    const/16 v3, 0x6f

    const-string/jumbo v4, "\ud83d\udcf6"

    aput-object v4, v2, v3

    const/16 v3, 0x70

    const-string/jumbo v4, "\ud83c\ude01"

    aput-object v4, v2, v3

    const/16 v3, 0x71

    const-string/jumbo v4, "\ud83d\udd23"

    aput-object v4, v2, v3

    const/16 v3, 0x72

    const-string/jumbo v4, "\u2139"

    aput-object v4, v2, v3

    const/16 v3, 0x73

    const-string/jumbo v4, "\ud83d\udd24"

    aput-object v4, v2, v3

    const/16 v3, 0x74

    const-string/jumbo v4, "\ud83d\udd21"

    aput-object v4, v2, v3

    const/16 v3, 0x75

    const-string/jumbo v4, "\ud83d\udd20"

    aput-object v4, v2, v3

    const/16 v3, 0x76

    const-string/jumbo v4, "\ud83c\udd96"

    aput-object v4, v2, v3

    const/16 v3, 0x77

    const-string/jumbo v4, "\ud83c\udd97"

    aput-object v4, v2, v3

    const/16 v3, 0x78

    const-string/jumbo v4, "\ud83c\udd99"

    aput-object v4, v2, v3

    const/16 v3, 0x79

    const-string/jumbo v4, "\ud83c\udd92"

    aput-object v4, v2, v3

    const/16 v3, 0x7a

    const-string/jumbo v4, "\ud83c\udd95"

    aput-object v4, v2, v3

    const/16 v3, 0x7b

    const-string/jumbo v4, "\ud83c\udd93"

    aput-object v4, v2, v3

    const/16 v3, 0x7c

    const-string/jumbo v4, "0\u20e3"

    aput-object v4, v2, v3

    const/16 v3, 0x7d

    const-string/jumbo v4, "1\u20e3"

    aput-object v4, v2, v3

    const/16 v3, 0x7e

    const-string/jumbo v4, "2\u20e3"

    aput-object v4, v2, v3

    const/16 v3, 0x7f

    const-string/jumbo v4, "3\u20e3"

    aput-object v4, v2, v3

    const/16 v3, 0x80

    const-string/jumbo v4, "4\u20e3"

    aput-object v4, v2, v3

    const/16 v3, 0x81

    const-string/jumbo v4, "5\u20e3"

    aput-object v4, v2, v3

    const/16 v3, 0x82

    const-string/jumbo v4, "6\u20e3"

    aput-object v4, v2, v3

    const/16 v3, 0x83

    const-string/jumbo v4, "7\u20e3"

    aput-object v4, v2, v3

    const/16 v3, 0x84

    const-string/jumbo v4, "8\u20e3"

    aput-object v4, v2, v3

    const/16 v3, 0x85

    const-string/jumbo v4, "9\u20e3"

    aput-object v4, v2, v3

    const/16 v3, 0x86

    const-string/jumbo v4, "\ud83d\udd1f"

    aput-object v4, v2, v3

    const/16 v3, 0x87

    const-string/jumbo v4, "\ud83d\udd22"

    aput-object v4, v2, v3

    const/16 v3, 0x88

    const-string/jumbo v4, "#\u20e3"

    aput-object v4, v2, v3

    const/16 v3, 0x89

    const-string/jumbo v4, "*\u20e3"

    aput-object v4, v2, v3

    const/16 v3, 0x8a

    const-string/jumbo v4, "\u25b6"

    aput-object v4, v2, v3

    const/16 v3, 0x8b

    const-string/jumbo v4, "\u23f8"

    aput-object v4, v2, v3

    const/16 v3, 0x8c

    const-string/jumbo v4, "\u23ef"

    aput-object v4, v2, v3

    const/16 v3, 0x8d

    const-string/jumbo v4, "\u23f9"

    aput-object v4, v2, v3

    const/16 v3, 0x8e

    const-string/jumbo v4, "\u23fa"

    aput-object v4, v2, v3

    const/16 v3, 0x8f

    const-string/jumbo v4, "\u23ed"

    aput-object v4, v2, v3

    const/16 v3, 0x90

    const-string/jumbo v4, "\u23ee"

    aput-object v4, v2, v3

    const/16 v3, 0x91

    const-string/jumbo v4, "\u23e9"

    aput-object v4, v2, v3

    const/16 v3, 0x92

    const-string/jumbo v4, "\u23ea"

    aput-object v4, v2, v3

    const/16 v3, 0x93

    const-string/jumbo v4, "\u23eb"

    aput-object v4, v2, v3

    const/16 v3, 0x94

    const-string/jumbo v4, "\u23ec"

    aput-object v4, v2, v3

    const/16 v3, 0x95

    const-string/jumbo v4, "\u25c0"

    aput-object v4, v2, v3

    const/16 v3, 0x96

    const-string/jumbo v4, "\ud83d\udd3c"

    aput-object v4, v2, v3

    const/16 v3, 0x97

    const-string/jumbo v4, "\ud83d\udd3d"

    aput-object v4, v2, v3

    const/16 v3, 0x98

    const-string/jumbo v4, "\u27a1"

    aput-object v4, v2, v3

    const/16 v3, 0x99

    const-string/jumbo v4, "\u2b05"

    aput-object v4, v2, v3

    const/16 v3, 0x9a

    const-string/jumbo v4, "\u2b06"

    aput-object v4, v2, v3

    const/16 v3, 0x9b

    const-string/jumbo v4, "\u2b07"

    aput-object v4, v2, v3

    const/16 v3, 0x9c

    const-string/jumbo v4, "\u2197"

    aput-object v4, v2, v3

    const/16 v3, 0x9d

    const-string/jumbo v4, "\u2198"

    aput-object v4, v2, v3

    const/16 v3, 0x9e

    const-string/jumbo v4, "\u2199"

    aput-object v4, v2, v3

    const/16 v3, 0x9f

    const-string/jumbo v4, "\u2196"

    aput-object v4, v2, v3

    const/16 v3, 0xa0

    const-string/jumbo v4, "\u2195"

    aput-object v4, v2, v3

    const/16 v3, 0xa1

    const-string/jumbo v4, "\u2194"

    aput-object v4, v2, v3

    const/16 v3, 0xa2

    const-string/jumbo v4, "\u21aa"

    aput-object v4, v2, v3

    const/16 v3, 0xa3

    const-string/jumbo v4, "\u21a9"

    aput-object v4, v2, v3

    const/16 v3, 0xa4

    const-string/jumbo v4, "\u2934"

    aput-object v4, v2, v3

    const/16 v3, 0xa5

    const-string/jumbo v4, "\u2935"

    aput-object v4, v2, v3

    const/16 v3, 0xa6

    const-string/jumbo v4, "\ud83d\udd00"

    aput-object v4, v2, v3

    const/16 v3, 0xa7

    const-string/jumbo v4, "\ud83d\udd01"

    aput-object v4, v2, v3

    const/16 v3, 0xa8

    const-string/jumbo v4, "\ud83d\udd02"

    aput-object v4, v2, v3

    const/16 v3, 0xa9

    const-string/jumbo v4, "\ud83d\udd04"

    aput-object v4, v2, v3

    const/16 v3, 0xaa

    const-string/jumbo v4, "\ud83d\udd03"

    aput-object v4, v2, v3

    const/16 v3, 0xab

    const-string/jumbo v4, "\ud83c\udfb5"

    aput-object v4, v2, v3

    const/16 v3, 0xac

    const-string/jumbo v4, "\ud83c\udfb6"

    aput-object v4, v2, v3

    const/16 v3, 0xad

    const-string/jumbo v4, "\u2795"

    aput-object v4, v2, v3

    const/16 v3, 0xae

    const-string/jumbo v4, "\u2796"

    aput-object v4, v2, v3

    const/16 v3, 0xaf

    const-string/jumbo v4, "\u2797"

    aput-object v4, v2, v3

    const/16 v3, 0xb0

    const-string/jumbo v4, "\u2716"

    aput-object v4, v2, v3

    const/16 v3, 0xb1

    const-string/jumbo v4, "\ud83d\udcb2"

    aput-object v4, v2, v3

    const/16 v3, 0xb2

    const-string/jumbo v4, "\ud83d\udcb1"

    aput-object v4, v2, v3

    const/16 v3, 0xb3

    const-string/jumbo v4, "\u2122"

    aput-object v4, v2, v3

    const/16 v3, 0xb4

    const-string/jumbo v4, "\u00a9"

    aput-object v4, v2, v3

    const/16 v3, 0xb5

    const-string/jumbo v4, "\u00ae"

    aput-object v4, v2, v3

    const/16 v3, 0xb6

    const-string/jumbo v4, "\u3030"

    aput-object v4, v2, v3

    const/16 v3, 0xb7

    const-string/jumbo v4, "\u27b0"

    aput-object v4, v2, v3

    const/16 v3, 0xb8

    const-string/jumbo v4, "\u27bf"

    aput-object v4, v2, v3

    const/16 v3, 0xb9

    const-string/jumbo v4, "\ud83d\udd1a"

    aput-object v4, v2, v3

    const/16 v3, 0xba

    const-string/jumbo v4, "\ud83d\udd19"

    aput-object v4, v2, v3

    const/16 v3, 0xbb

    const-string/jumbo v4, "\ud83d\udd1b"

    aput-object v4, v2, v3

    const/16 v3, 0xbc

    const-string/jumbo v4, "\ud83d\udd1d"

    aput-object v4, v2, v3

    const/16 v3, 0xbd

    const-string/jumbo v4, "\ud83d\udd1c"

    aput-object v4, v2, v3

    const/16 v3, 0xbe

    const-string/jumbo v4, "\u2714"

    aput-object v4, v2, v3

    const/16 v3, 0xbf

    const-string/jumbo v4, "\u2611"

    aput-object v4, v2, v3

    const/16 v3, 0xc0

    const-string/jumbo v4, "\ud83d\udd18"

    aput-object v4, v2, v3

    const/16 v3, 0xc1

    const-string/jumbo v4, "\u26aa"

    aput-object v4, v2, v3

    const/16 v3, 0xc2

    const-string/jumbo v4, "\u26ab"

    aput-object v4, v2, v3

    const/16 v3, 0xc3

    const-string/jumbo v4, "\ud83d\udd34"

    aput-object v4, v2, v3

    const/16 v3, 0xc4

    const-string/jumbo v4, "\ud83d\udd35"

    aput-object v4, v2, v3

    const/16 v3, 0xc5

    const-string/jumbo v4, "\ud83d\udd3a"

    aput-object v4, v2, v3

    const/16 v3, 0xc6

    const-string/jumbo v4, "\ud83d\udd3b"

    aput-object v4, v2, v3

    const/16 v3, 0xc7

    const-string/jumbo v4, "\ud83d\udd38"

    aput-object v4, v2, v3

    const/16 v3, 0xc8

    const-string/jumbo v4, "\ud83d\udd39"

    aput-object v4, v2, v3

    const/16 v3, 0xc9

    const-string/jumbo v4, "\ud83d\udd36"

    aput-object v4, v2, v3

    const/16 v3, 0xca

    const-string/jumbo v4, "\ud83d\udd37"

    aput-object v4, v2, v3

    const/16 v3, 0xcb

    const-string/jumbo v4, "\ud83d\udd33"

    aput-object v4, v2, v3

    const/16 v3, 0xcc

    const-string/jumbo v4, "\ud83d\udd32"

    aput-object v4, v2, v3

    const/16 v3, 0xcd

    const-string/jumbo v4, "\u25aa"

    aput-object v4, v2, v3

    const/16 v3, 0xce

    const-string/jumbo v4, "\u25ab"

    aput-object v4, v2, v3

    const/16 v3, 0xcf

    const-string/jumbo v4, "\u25fe"

    aput-object v4, v2, v3

    const/16 v3, 0xd0

    const-string/jumbo v4, "\u25fd"

    aput-object v4, v2, v3

    const/16 v3, 0xd1

    const-string/jumbo v4, "\u25fc"

    aput-object v4, v2, v3

    const/16 v3, 0xd2

    const-string/jumbo v4, "\u25fb"

    aput-object v4, v2, v3

    const/16 v3, 0xd3

    const-string/jumbo v4, "\u2b1b"

    aput-object v4, v2, v3

    const/16 v3, 0xd4

    const-string/jumbo v4, "\u2b1c"

    aput-object v4, v2, v3

    const/16 v3, 0xd5

    const-string/jumbo v4, "\ud83d\udd08"

    aput-object v4, v2, v3

    const/16 v3, 0xd6

    const-string/jumbo v4, "\ud83d\udd07"

    aput-object v4, v2, v3

    const/16 v3, 0xd7

    const-string/jumbo v4, "\ud83d\udd09"

    aput-object v4, v2, v3

    const/16 v3, 0xd8

    const-string/jumbo v4, "\ud83d\udd0a"

    aput-object v4, v2, v3

    const/16 v3, 0xd9

    const-string/jumbo v4, "\ud83d\udd14"

    aput-object v4, v2, v3

    const/16 v3, 0xda

    const-string/jumbo v4, "\ud83d\udd15"

    aput-object v4, v2, v3

    const/16 v3, 0xdb

    const-string/jumbo v4, "\ud83d\udce3"

    aput-object v4, v2, v3

    const/16 v3, 0xdc

    const-string/jumbo v4, "\ud83d\udce2"

    aput-object v4, v2, v3

    const/16 v3, 0xdd

    const-string/jumbo v4, "\ud83d\udc41\u200d\ud83d\udde8"

    aput-object v4, v2, v3

    const/16 v3, 0xde

    const-string/jumbo v4, "\ud83d\udcac"

    aput-object v4, v2, v3

    const/16 v3, 0xdf

    const-string/jumbo v4, "\ud83d\udcad"

    aput-object v4, v2, v3

    const/16 v3, 0xe0

    const-string/jumbo v4, "\ud83d\uddef"

    aput-object v4, v2, v3

    const/16 v3, 0xe1

    const-string/jumbo v4, "\u2660"

    aput-object v4, v2, v3

    const/16 v3, 0xe2

    const-string/jumbo v4, "\u2663"

    aput-object v4, v2, v3

    const/16 v3, 0xe3

    const-string/jumbo v4, "\u2665"

    aput-object v4, v2, v3

    const/16 v3, 0xe4

    const-string/jumbo v4, "\u2666"

    aput-object v4, v2, v3

    const/16 v3, 0xe5

    const-string/jumbo v4, "\ud83c\udccf"

    aput-object v4, v2, v3

    const/16 v3, 0xe6

    const-string/jumbo v4, "\ud83c\udfb4"

    aput-object v4, v2, v3

    const/16 v3, 0xe7

    const-string/jumbo v4, "\ud83c\udc04"

    aput-object v4, v2, v3

    const/16 v3, 0xe8

    const-string/jumbo v4, "\ud83d\udd50"

    aput-object v4, v2, v3

    const/16 v3, 0xe9

    const-string/jumbo v4, "\ud83d\udd51"

    aput-object v4, v2, v3

    const/16 v3, 0xea

    const-string/jumbo v4, "\ud83d\udd52"

    aput-object v4, v2, v3

    const/16 v3, 0xeb

    const-string/jumbo v4, "\ud83d\udd53"

    aput-object v4, v2, v3

    const/16 v3, 0xec

    const-string/jumbo v4, "\ud83d\udd54"

    aput-object v4, v2, v3

    const/16 v3, 0xed

    const-string/jumbo v4, "\ud83d\udd55"

    aput-object v4, v2, v3

    const/16 v3, 0xee

    const-string/jumbo v4, "\ud83d\udd56"

    aput-object v4, v2, v3

    const/16 v3, 0xef

    const-string/jumbo v4, "\ud83d\udd57"

    aput-object v4, v2, v3

    const/16 v3, 0xf0

    const-string/jumbo v4, "\ud83d\udd58"

    aput-object v4, v2, v3

    const/16 v3, 0xf1

    const-string/jumbo v4, "\ud83d\udd59"

    aput-object v4, v2, v3

    const/16 v3, 0xf2

    const-string/jumbo v4, "\ud83d\udd5a"

    aput-object v4, v2, v3

    const/16 v3, 0xf3

    const-string/jumbo v4, "\ud83d\udd5b"

    aput-object v4, v2, v3

    const/16 v3, 0xf4

    const-string/jumbo v4, "\ud83d\udd5c"

    aput-object v4, v2, v3

    const/16 v3, 0xf5

    const-string/jumbo v4, "\ud83d\udd5d"

    aput-object v4, v2, v3

    const/16 v3, 0xf6

    const-string/jumbo v4, "\ud83d\udd5e"

    aput-object v4, v2, v3

    const/16 v3, 0xf7

    const-string/jumbo v4, "\ud83d\udd5f"

    aput-object v4, v2, v3

    const/16 v3, 0xf8

    const-string/jumbo v4, "\ud83d\udd60"

    aput-object v4, v2, v3

    const/16 v3, 0xf9

    const-string/jumbo v4, "\ud83d\udd61"

    aput-object v4, v2, v3

    const/16 v3, 0xfa

    const-string/jumbo v4, "\ud83d\udd62"

    aput-object v4, v2, v3

    const/16 v3, 0xfb

    const-string/jumbo v4, "\ud83d\udd63"

    aput-object v4, v2, v3

    const/16 v3, 0xfc

    const-string/jumbo v4, "\ud83d\udd64"

    aput-object v4, v2, v3

    const/16 v3, 0xfd

    const-string/jumbo v4, "\ud83d\udd65"

    aput-object v4, v2, v3

    const/16 v3, 0xfe

    const-string/jumbo v4, "\ud83d\udd66"

    aput-object v4, v2, v3

    const/16 v3, 0xff

    const-string/jumbo v4, "\ud83d\udd67"

    aput-object v4, v2, v3

    const/16 v3, 0x100

    const-string/jumbo v4, "\u231a"

    aput-object v4, v2, v3

    const/16 v3, 0x101

    const-string/jumbo v4, "\ud83d\udcf1"

    aput-object v4, v2, v3

    const/16 v3, 0x102

    const-string/jumbo v4, "\ud83d\udcf2"

    aput-object v4, v2, v3

    const/16 v3, 0x103

    const-string/jumbo v4, "\ud83d\udcbb"

    aput-object v4, v2, v3

    const/16 v3, 0x104

    const-string/jumbo v4, "\u2328"

    aput-object v4, v2, v3

    const/16 v3, 0x105

    const-string/jumbo v4, "\ud83d\udda5"

    aput-object v4, v2, v3

    const/16 v3, 0x106

    const-string/jumbo v4, "\ud83d\udda8"

    aput-object v4, v2, v3

    const/16 v3, 0x107

    const-string/jumbo v4, "\ud83d\uddb1"

    aput-object v4, v2, v3

    const/16 v3, 0x108

    const-string/jumbo v4, "\ud83d\uddb2"

    aput-object v4, v2, v3

    const/16 v3, 0x109

    const-string/jumbo v4, "\ud83d\udd79"

    aput-object v4, v2, v3

    const/16 v3, 0x10a

    const-string/jumbo v4, "\ud83d\udddc"

    aput-object v4, v2, v3

    const/16 v3, 0x10b

    const-string/jumbo v4, "\ud83d\udcbd"

    aput-object v4, v2, v3

    const/16 v3, 0x10c

    const-string/jumbo v4, "\ud83d\udcbe"

    aput-object v4, v2, v3

    const/16 v3, 0x10d

    const-string/jumbo v4, "\ud83d\udcbf"

    aput-object v4, v2, v3

    const/16 v3, 0x10e

    const-string/jumbo v4, "\ud83d\udcc0"

    aput-object v4, v2, v3

    const/16 v3, 0x10f

    const-string/jumbo v4, "\ud83d\udcfc"

    aput-object v4, v2, v3

    const/16 v3, 0x110

    const-string/jumbo v4, "\ud83d\udcf7"

    aput-object v4, v2, v3

    const/16 v3, 0x111

    const-string/jumbo v4, "\ud83d\udcf8"

    aput-object v4, v2, v3

    const/16 v3, 0x112

    const-string/jumbo v4, "\ud83d\udcf9"

    aput-object v4, v2, v3

    const/16 v3, 0x113

    const-string/jumbo v4, "\ud83c\udfa5"

    aput-object v4, v2, v3

    const/16 v3, 0x114

    const-string/jumbo v4, "\ud83d\udcfd"

    aput-object v4, v2, v3

    const/16 v3, 0x115

    const-string/jumbo v4, "\ud83c\udf9e"

    aput-object v4, v2, v3

    const/16 v3, 0x116

    const-string/jumbo v4, "\ud83d\udcde"

    aput-object v4, v2, v3

    const/16 v3, 0x117

    const-string/jumbo v4, "\u260e"

    aput-object v4, v2, v3

    const/16 v3, 0x118

    const-string/jumbo v4, "\ud83d\udcdf"

    aput-object v4, v2, v3

    const/16 v3, 0x119

    const-string/jumbo v4, "\ud83d\udce0"

    aput-object v4, v2, v3

    const/16 v3, 0x11a

    const-string/jumbo v4, "\ud83d\udcfa"

    aput-object v4, v2, v3

    const/16 v3, 0x11b

    const-string/jumbo v4, "\ud83d\udcfb"

    aput-object v4, v2, v3

    const/16 v3, 0x11c

    const-string/jumbo v4, "\ud83c\udf99"

    aput-object v4, v2, v3

    const/16 v3, 0x11d

    const-string/jumbo v4, "\ud83c\udf9a"

    aput-object v4, v2, v3

    const/16 v3, 0x11e

    const-string/jumbo v4, "\ud83c\udf9b"

    aput-object v4, v2, v3

    const/16 v3, 0x11f

    const-string/jumbo v4, "\u23f1"

    aput-object v4, v2, v3

    const/16 v3, 0x120

    const-string/jumbo v4, "\u23f2"

    aput-object v4, v2, v3

    const/16 v3, 0x121

    const-string/jumbo v4, "\u23f0"

    aput-object v4, v2, v3

    const/16 v3, 0x122

    const-string/jumbo v4, "\ud83d\udd70"

    aput-object v4, v2, v3

    const/16 v3, 0x123

    const-string/jumbo v4, "\u231b"

    aput-object v4, v2, v3

    const/16 v3, 0x124

    const-string/jumbo v4, "\u23f3"

    aput-object v4, v2, v3

    const/16 v3, 0x125

    const-string/jumbo v4, "\ud83d\udce1"

    aput-object v4, v2, v3

    const/16 v3, 0x126

    const-string/jumbo v4, "\ud83d\udd0b"

    aput-object v4, v2, v3

    const/16 v3, 0x127

    const-string/jumbo v4, "\ud83d\udd0c"

    aput-object v4, v2, v3

    const/16 v3, 0x128

    const-string/jumbo v4, "\ud83d\udca1"

    aput-object v4, v2, v3

    const/16 v3, 0x129

    const-string/jumbo v4, "\ud83d\udd26"

    aput-object v4, v2, v3

    const/16 v3, 0x12a

    const-string/jumbo v4, "\ud83d\udd6f"

    aput-object v4, v2, v3

    const/16 v3, 0x12b

    const-string/jumbo v4, "\ud83d\uddd1"

    aput-object v4, v2, v3

    const/16 v3, 0x12c

    const-string/jumbo v4, "\ud83d\udee2"

    aput-object v4, v2, v3

    const/16 v3, 0x12d

    const-string/jumbo v4, "\ud83d\udcb8"

    aput-object v4, v2, v3

    const/16 v3, 0x12e

    const-string/jumbo v4, "\ud83d\udcb5"

    aput-object v4, v2, v3

    const/16 v3, 0x12f

    const-string/jumbo v4, "\ud83d\udcb4"

    aput-object v4, v2, v3

    const/16 v3, 0x130

    const-string/jumbo v4, "\ud83d\udcb6"

    aput-object v4, v2, v3

    const/16 v3, 0x131

    const-string/jumbo v4, "\ud83d\udcb7"

    aput-object v4, v2, v3

    const/16 v3, 0x132

    const-string/jumbo v4, "\ud83d\udcb0"

    aput-object v4, v2, v3

    const/16 v3, 0x133

    const-string/jumbo v4, "\ud83d\udcb3"

    aput-object v4, v2, v3

    const/16 v3, 0x134

    const-string/jumbo v4, "\ud83d\udc8e"

    aput-object v4, v2, v3

    const/16 v3, 0x135

    const-string/jumbo v4, "\u2696"

    aput-object v4, v2, v3

    const/16 v3, 0x136

    const-string/jumbo v4, "\ud83d\udd27"

    aput-object v4, v2, v3

    const/16 v3, 0x137

    const-string/jumbo v4, "\ud83d\udd28"

    aput-object v4, v2, v3

    const/16 v3, 0x138

    const-string/jumbo v4, "\u2692"

    aput-object v4, v2, v3

    const/16 v3, 0x139

    const-string/jumbo v4, "\ud83d\udee0"

    aput-object v4, v2, v3

    const/16 v3, 0x13a

    const-string/jumbo v4, "\u26cf"

    aput-object v4, v2, v3

    const/16 v3, 0x13b

    const-string/jumbo v4, "\ud83d\udd29"

    aput-object v4, v2, v3

    const/16 v3, 0x13c

    const-string/jumbo v4, "\u2699"

    aput-object v4, v2, v3

    const/16 v3, 0x13d

    const-string/jumbo v4, "\u26d3"

    aput-object v4, v2, v3

    const/16 v3, 0x13e

    const-string/jumbo v4, "\ud83d\udd2b"

    aput-object v4, v2, v3

    const/16 v3, 0x13f

    const-string/jumbo v4, "\ud83d\udca3"

    aput-object v4, v2, v3

    const/16 v3, 0x140

    const-string/jumbo v4, "\ud83d\udd2a"

    aput-object v4, v2, v3

    const/16 v3, 0x141

    const-string/jumbo v4, "\ud83d\udde1"

    aput-object v4, v2, v3

    const/16 v3, 0x142

    const-string/jumbo v4, "\u2694"

    aput-object v4, v2, v3

    const/16 v3, 0x143

    const-string/jumbo v4, "\ud83d\udee1"

    aput-object v4, v2, v3

    const/16 v3, 0x144

    const-string/jumbo v4, "\ud83d\udeac"

    aput-object v4, v2, v3

    const/16 v3, 0x145

    const-string/jumbo v4, "\u26b0"

    aput-object v4, v2, v3

    const/16 v3, 0x146

    const-string/jumbo v4, "\u26b1"

    aput-object v4, v2, v3

    const/16 v3, 0x147

    const-string/jumbo v4, "\ud83c\udffa"

    aput-object v4, v2, v3

    const/16 v3, 0x148

    const-string/jumbo v4, "\ud83d\udd2e"

    aput-object v4, v2, v3

    const/16 v3, 0x149

    const-string/jumbo v4, "\ud83d\udcff"

    aput-object v4, v2, v3

    const/16 v3, 0x14a

    const-string/jumbo v4, "\ud83d\udc88"

    aput-object v4, v2, v3

    const/16 v3, 0x14b

    const-string/jumbo v4, "\u2697"

    aput-object v4, v2, v3

    const/16 v3, 0x14c

    const-string/jumbo v4, "\ud83d\udd2d"

    aput-object v4, v2, v3

    const/16 v3, 0x14d

    const-string/jumbo v4, "\ud83d\udd2c"

    aput-object v4, v2, v3

    const/16 v3, 0x14e

    const-string/jumbo v4, "\ud83d\udd73"

    aput-object v4, v2, v3

    const/16 v3, 0x14f

    const-string/jumbo v4, "\ud83d\udc8a"

    aput-object v4, v2, v3

    const/16 v3, 0x150

    const-string/jumbo v4, "\ud83d\udc89"

    aput-object v4, v2, v3

    const/16 v3, 0x151

    const-string/jumbo v4, "\ud83c\udf21"

    aput-object v4, v2, v3

    const/16 v3, 0x152

    const-string/jumbo v4, "\ud83d\udebd"

    aput-object v4, v2, v3

    const/16 v3, 0x153

    const-string/jumbo v4, "\ud83d\udeb0"

    aput-object v4, v2, v3

    const/16 v3, 0x154

    const-string/jumbo v4, "\ud83d\udebf"

    aput-object v4, v2, v3

    const/16 v3, 0x155

    const-string/jumbo v4, "\ud83d\udec1"

    aput-object v4, v2, v3

    const/16 v3, 0x156

    const-string/jumbo v4, "\ud83d\udec0"

    aput-object v4, v2, v3

    const/16 v3, 0x157

    const-string/jumbo v4, "\ud83d\udec0\ud83c\udffb"

    aput-object v4, v2, v3

    const/16 v3, 0x158

    const-string/jumbo v4, "\ud83d\udec0\ud83c\udffc"

    aput-object v4, v2, v3

    const/16 v3, 0x159

    const-string/jumbo v4, "\ud83d\udec0\ud83c\udffd"

    aput-object v4, v2, v3

    const/16 v3, 0x15a

    const-string/jumbo v4, "\ud83d\udec0\ud83c\udffe"

    aput-object v4, v2, v3

    const/16 v3, 0x15b

    const-string/jumbo v4, "\ud83d\udec0\ud83c\udfff"

    aput-object v4, v2, v3

    const/16 v3, 0x15c

    const-string/jumbo v4, "\ud83d\udece"

    aput-object v4, v2, v3

    const/16 v3, 0x15d

    const-string/jumbo v4, "\ud83d\udd11"

    aput-object v4, v2, v3

    const/16 v3, 0x15e

    const-string/jumbo v4, "\ud83d\udddd"

    aput-object v4, v2, v3

    const/16 v3, 0x15f

    const-string/jumbo v4, "\ud83d\udeaa"

    aput-object v4, v2, v3

    const/16 v3, 0x160

    const-string/jumbo v4, "\ud83d\udecb"

    aput-object v4, v2, v3

    const/16 v3, 0x161

    const-string/jumbo v4, "\ud83d\udecf"

    aput-object v4, v2, v3

    const/16 v3, 0x162

    const-string/jumbo v4, "\ud83d\udecc"

    aput-object v4, v2, v3

    const/16 v3, 0x163

    const-string/jumbo v4, "\ud83d\uddbc"

    aput-object v4, v2, v3

    const/16 v3, 0x164

    const-string/jumbo v4, "\ud83d\udecd"

    aput-object v4, v2, v3

    const/16 v3, 0x165

    const-string/jumbo v4, "\ud83d\uded2"

    aput-object v4, v2, v3

    const/16 v3, 0x166

    const-string/jumbo v4, "\ud83c\udf81"

    aput-object v4, v2, v3

    const/16 v3, 0x167

    const-string/jumbo v4, "\ud83c\udf88"

    aput-object v4, v2, v3

    const/16 v3, 0x168

    const-string/jumbo v4, "\ud83c\udf8f"

    aput-object v4, v2, v3

    const/16 v3, 0x169

    const-string/jumbo v4, "\ud83c\udf80"

    aput-object v4, v2, v3

    const/16 v3, 0x16a

    const-string/jumbo v4, "\ud83c\udf8a"

    aput-object v4, v2, v3

    const/16 v3, 0x16b

    const-string/jumbo v4, "\ud83c\udf89"

    aput-object v4, v2, v3

    const/16 v3, 0x16c

    const-string/jumbo v4, "\ud83c\udf8e"

    aput-object v4, v2, v3

    const/16 v3, 0x16d

    const-string/jumbo v4, "\ud83c\udfee"

    aput-object v4, v2, v3

    const/16 v3, 0x16e

    const-string/jumbo v4, "\ud83c\udf90"

    aput-object v4, v2, v3

    const/16 v3, 0x16f

    const-string/jumbo v4, "\u2709"

    aput-object v4, v2, v3

    const/16 v3, 0x170

    const-string/jumbo v4, "\ud83d\udce9"

    aput-object v4, v2, v3

    const/16 v3, 0x171

    const-string/jumbo v4, "\ud83d\udce8"

    aput-object v4, v2, v3

    const/16 v3, 0x172

    const-string/jumbo v4, "\ud83d\udce7"

    aput-object v4, v2, v3

    const/16 v3, 0x173

    const-string/jumbo v4, "\ud83d\udc8c"

    aput-object v4, v2, v3

    const/16 v3, 0x174

    const-string/jumbo v4, "\ud83d\udce5"

    aput-object v4, v2, v3

    const/16 v3, 0x175

    const-string/jumbo v4, "\ud83d\udce4"

    aput-object v4, v2, v3

    const/16 v3, 0x176

    const-string/jumbo v4, "\ud83d\udce6"

    aput-object v4, v2, v3

    const/16 v3, 0x177

    const-string/jumbo v4, "\ud83c\udff7"

    aput-object v4, v2, v3

    const/16 v3, 0x178

    const-string/jumbo v4, "\ud83d\udcea"

    aput-object v4, v2, v3

    const/16 v3, 0x179

    const-string/jumbo v4, "\ud83d\udceb"

    aput-object v4, v2, v3

    const/16 v3, 0x17a

    const-string/jumbo v4, "\ud83d\udcec"

    aput-object v4, v2, v3

    const/16 v3, 0x17b

    const-string/jumbo v4, "\ud83d\udced"

    aput-object v4, v2, v3

    const/16 v3, 0x17c

    const-string/jumbo v4, "\ud83d\udcee"

    aput-object v4, v2, v3

    const/16 v3, 0x17d

    const-string/jumbo v4, "\ud83d\udcef"

    aput-object v4, v2, v3

    const/16 v3, 0x17e

    const-string/jumbo v4, "\ud83d\udcdc"

    aput-object v4, v2, v3

    const/16 v3, 0x17f

    const-string/jumbo v4, "\ud83d\udcc3"

    aput-object v4, v2, v3

    const/16 v3, 0x180

    const-string/jumbo v4, "\ud83d\udcc4"

    aput-object v4, v2, v3

    const/16 v3, 0x181

    const-string/jumbo v4, "\ud83d\udcd1"

    aput-object v4, v2, v3

    const/16 v3, 0x182

    const-string/jumbo v4, "\ud83d\udcca"

    aput-object v4, v2, v3

    const/16 v3, 0x183

    const-string/jumbo v4, "\ud83d\udcc8"

    aput-object v4, v2, v3

    const/16 v3, 0x184

    const-string/jumbo v4, "\ud83d\udcc9"

    aput-object v4, v2, v3

    const/16 v3, 0x185

    const-string/jumbo v4, "\ud83d\uddd2"

    aput-object v4, v2, v3

    const/16 v3, 0x186

    const-string/jumbo v4, "\ud83d\uddd3"

    aput-object v4, v2, v3

    const/16 v3, 0x187

    const-string/jumbo v4, "\ud83d\udcc6"

    aput-object v4, v2, v3

    const/16 v3, 0x188

    const-string/jumbo v4, "\ud83d\udcc5"

    aput-object v4, v2, v3

    const/16 v3, 0x189

    const-string/jumbo v4, "\ud83d\udcc7"

    aput-object v4, v2, v3

    const/16 v3, 0x18a

    const-string/jumbo v4, "\ud83d\uddc3"

    aput-object v4, v2, v3

    const/16 v3, 0x18b

    const-string/jumbo v4, "\ud83d\uddf3"

    aput-object v4, v2, v3

    const/16 v3, 0x18c

    const-string/jumbo v4, "\ud83d\uddc4"

    aput-object v4, v2, v3

    const/16 v3, 0x18d

    const-string/jumbo v4, "\ud83d\udccb"

    aput-object v4, v2, v3

    const/16 v3, 0x18e

    const-string/jumbo v4, "\ud83d\udcc1"

    aput-object v4, v2, v3

    const/16 v3, 0x18f

    const-string/jumbo v4, "\ud83d\udcc2"

    aput-object v4, v2, v3

    const/16 v3, 0x190

    const-string/jumbo v4, "\ud83d\uddc2"

    aput-object v4, v2, v3

    const/16 v3, 0x191

    const-string/jumbo v4, "\ud83d\uddde"

    aput-object v4, v2, v3

    const/16 v3, 0x192

    const-string/jumbo v4, "\ud83d\udcf0"

    aput-object v4, v2, v3

    const/16 v3, 0x193

    const-string/jumbo v4, "\ud83d\udcd3"

    aput-object v4, v2, v3

    const/16 v3, 0x194

    const-string/jumbo v4, "\ud83d\udcd4"

    aput-object v4, v2, v3

    const/16 v3, 0x195

    const-string/jumbo v4, "\ud83d\udcd2"

    aput-object v4, v2, v3

    const/16 v3, 0x196

    const-string/jumbo v4, "\ud83d\udcd5"

    aput-object v4, v2, v3

    const/16 v3, 0x197

    const-string/jumbo v4, "\ud83d\udcd7"

    aput-object v4, v2, v3

    const/16 v3, 0x198

    const-string/jumbo v4, "\ud83d\udcd8"

    aput-object v4, v2, v3

    const/16 v3, 0x199

    const-string/jumbo v4, "\ud83d\udcd9"

    aput-object v4, v2, v3

    const/16 v3, 0x19a

    const-string/jumbo v4, "\ud83d\udcda"

    aput-object v4, v2, v3

    const/16 v3, 0x19b

    const-string/jumbo v4, "\ud83d\udcd6"

    aput-object v4, v2, v3

    const/16 v3, 0x19c

    const-string/jumbo v4, "\ud83d\udd16"

    aput-object v4, v2, v3

    const/16 v3, 0x19d

    const-string/jumbo v4, "\ud83d\udd17"

    aput-object v4, v2, v3

    const/16 v3, 0x19e

    const-string/jumbo v4, "\ud83d\udcce"

    aput-object v4, v2, v3

    const/16 v3, 0x19f

    const-string/jumbo v4, "\ud83d\udd87"

    aput-object v4, v2, v3

    const/16 v3, 0x1a0

    const-string/jumbo v4, "\ud83d\udcd0"

    aput-object v4, v2, v3

    const/16 v3, 0x1a1

    const-string/jumbo v4, "\ud83d\udccf"

    aput-object v4, v2, v3

    const/16 v3, 0x1a2

    const-string/jumbo v4, "\ud83d\udccc"

    aput-object v4, v2, v3

    const/16 v3, 0x1a3

    const-string/jumbo v4, "\ud83d\udccd"

    aput-object v4, v2, v3

    const/16 v3, 0x1a4

    const-string/jumbo v4, "\u2702"

    aput-object v4, v2, v3

    const/16 v3, 0x1a5

    const-string/jumbo v4, "\ud83d\udd8a"

    aput-object v4, v2, v3

    const/16 v3, 0x1a6

    const-string/jumbo v4, "\ud83d\udd8b"

    aput-object v4, v2, v3

    const/16 v3, 0x1a7

    const-string/jumbo v4, "\u2712"

    aput-object v4, v2, v3

    const/16 v3, 0x1a8

    const-string/jumbo v4, "\ud83d\udd8c"

    aput-object v4, v2, v3

    const/16 v3, 0x1a9

    const-string/jumbo v4, "\ud83d\udd8d"

    aput-object v4, v2, v3

    const/16 v3, 0x1aa

    const-string/jumbo v4, "\ud83d\udcdd"

    aput-object v4, v2, v3

    const/16 v3, 0x1ab

    const-string/jumbo v4, "\u270f"

    aput-object v4, v2, v3

    const/16 v3, 0x1ac

    const-string/jumbo v4, "\ud83d\udd0d"

    aput-object v4, v2, v3

    const/16 v3, 0x1ad

    const-string/jumbo v4, "\ud83d\udd0e"

    aput-object v4, v2, v3

    const/16 v3, 0x1ae

    const-string/jumbo v4, "\ud83d\udd0f"

    aput-object v4, v2, v3

    const/16 v3, 0x1af

    const-string/jumbo v4, "\ud83d\udd10"

    aput-object v4, v2, v3

    const/16 v3, 0x1b0

    const-string/jumbo v4, "\ud83d\udd12"

    aput-object v4, v2, v3

    const/16 v3, 0x1b1

    const-string/jumbo v4, "\ud83d\udd13"

    aput-object v4, v2, v3

    aput-object v2, v1, v9

    sput-object v1, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    .line 254
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lorg/telegram/messenger/EmojiData;->emojiToFE0F:[C

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lorg/telegram/messenger/EmojiData;->emojiToFE0FMap:Ljava/util/HashMap;

    .line 255
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lorg/telegram/messenger/EmojiData;->dataChars:[C

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lorg/telegram/messenger/EmojiData;->dataCharsMap:Ljava/util/HashMap;

    .line 256
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Lorg/telegram/messenger/EmojiData;->emojiColored:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    sput-object v1, Lorg/telegram/messenger/EmojiData;->emojiColoredMap:Ljava/util/HashMap;

    .line 259
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_0
    sget-object v1, Lorg/telegram/messenger/EmojiData;->emojiToFE0F:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 260
    sget-object v1, Lorg/telegram/messenger/EmojiData;->emojiToFE0FMap:Ljava/util/HashMap;

    sget-object v2, Lorg/telegram/messenger/EmojiData;->emojiToFE0F:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 262
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lorg/telegram/messenger/EmojiData;->dataChars:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 263
    sget-object v1, Lorg/telegram/messenger/EmojiData;->dataCharsMap:Ljava/util/HashMap;

    sget-object v2, Lorg/telegram/messenger/EmojiData;->dataChars:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 265
    :cond_1
    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lorg/telegram/messenger/EmojiData;->emojiColored:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 266
    sget-object v1, Lorg/telegram/messenger/EmojiData;->emojiColoredMap:Ljava/util/HashMap;

    sget-object v2, Lorg/telegram/messenger/EmojiData;->emojiColored:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 268
    :cond_2
    sget-object v1, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    sget-object v2, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    aget-object v2, v2, v5

    aput-object v2, v1, v5

    .line 269
    sget-object v1, Lorg/telegram/messenger/EmojiData;->dataColored:[[Ljava/lang/String;

    sget-object v2, Lorg/telegram/messenger/EmojiData;->data:[[Ljava/lang/String;

    aget-object v2, v2, v6

    aput-object v2, v1, v6

    .line 270
    return-void

    .line 15
    nop

    :array_0
    .array-data 2
        0x2b50s
        0x2600s
        0x26c5s
        0x2601s
        0x26a1s
        0x2744s
        0x26c4s
        0x2614s
        0x2708s
        0x26f5s
        0x2693s
        0x26fds
        0x26f2s
        0x26fas
        0x26eas
        0x2615s
        0x26bds
        0x26bes
        0x26f3s
        0x231as
        0x260es
        0x231bs
        0x2709s
        0x2702s
        0x2712s
        0x270fs
        0x2648s
        0x2649s
        0x264as
        0x264bs
        0x264cs
        0x264ds
        0x264es
        0x264fs
        0x2650s
        0x2651s
        0x2652s
        0x2653s
        0x2734s
        0x3299s
        0x3297s
        0x26d4s
        0x2b55s
        0x2668s
        0x2757s
        0x203cs
        0x2049s
        0x303ds
        0x26a0s
        0x267bs
        0x2747s
        0x2733s
        0x24c2s
        0x267fs
        0x25b6s
        0x25c0s
        0x27a1s
        0x2b05s
        0x2b06s
        0x2b07s
        0x2197s
        0x2198s
        0x2199s
        0x2196s
        0x2195s
        0x2194s
        0x21aas
        0x21a9s
        0x2934s
        0x2935s
        0x2139s
        0x2714s
        0x2716s
        0x2611s
        0x26aas
        0x26abs
        0x25aas
        0x25abs
        0x2b1bs
        0x2b1cs
        0x25fcs
        0x25fbs
        0x25fes
        0x25fds
        0x2660s
        0x2663s
        0x2665s
        0x2666s
        0x263as
        0x2639s
        0x270cs
        0x261ds
        0x2764s
    .end array-data

    .line 29
    nop

    :array_1
    .array-data 2
        0x262es
        0x271ds
        0x262as
        0x2638s
        0x2721s
        0x262fs
        0x2626s
        0x26ces
        0x2648s
        0x2649s
        0x264as
        0x264bs
        0x264cs
        0x264ds
        0x264es
        0x264fs
        0x2650s
        0x2651s
        0x2652s
        0x2653s
        0x269bs
        0x2622s
        0x2623s
        0x2734s
        0x3299s
        0x3297s
        0x26d4s
        0x274cs
        0x2b55s
        0x2668s
        0x2757s
        0x2755s
        0x2753s
        0x2754s
        0x203cs
        0x2049s
        0x269cs
        0x303ds
        0x26a0s
        0x267bs
        0x2747s
        0x2733s
        0x274es
        0x2705s
        0x27bfs
        0x24c2s
        0x267fs
        0x25b6s
        0x23f8s
        0x23efs
        0x23f9s
        0x23fas
        0x23eds
        0x23ees
        0x23e9s
        0x23eas
        0x25c0s
        0x23ebs
        0x23ecs
        0x27a1s
        0x2b05s
        0x2b06s
        0x2b07s
        0x2197s
        0x2198s
        0x2199s
        0x2196s
        0x2195s
        0x2194s
        0x21aas
        0x21a9s
        0x2934s
        0x2935s
        0x2139s
        0x3030s
        0x27b0s
        0x2714s
        0x2795s
        0x2796s
        0x2797s
        0x2716s
        0xa9s
        0xaes
        0x2122s
        0x2611s
        0x26aas
        0x26abs
        0x25aas
        0x25abs
        0x2b1bs
        0x2b1cs
        0x25fcs
        0x25fbs
        0x25fes
        0x25fds
        0x2660s
        0x2663s
        0x2665s
        0x2666s
        0x263as
        0x2639s
        0x270as
        0x270cs
        0x270bs
        0x261ds
        0x270ds
        0x26d1s
        0x2764s
        0x2763s
        0x2615s
        0x26bds
        0x26bes
        0x26f3s
        0x26f7s
        0x26f8s
        0x26f9s
        0x231as
        0x2328s
        0x260es
        0x23f1s
        0x23f2s
        0x23f0s
        0x23f3s
        0x231bs
        0x2696s
        0x2692s
        0x26cfs
        0x2699s
        0x26d3s
        0x2694s
        0x2620s
        0x26b0s
        0x26b1s
        0x2697s
        0x26f1s
        0x2709s
        0x2702s
        0x2712s
        0x270fs
        0x2708s
        0x26f5s
        0x26f4s
        0x2693s
        0x26fds
        0x26f2s
        0x26f0s
        0x26fas
        0x26eas
        0x26e9s
        0x2618s
        0x2b50s
        0x2728s
        0x2604s
        0x2600s
        0x26c5s
        0x2601s
        0x26c8s
        0x26a1s
        0x2744s
        0x2603s
        0x26c4s
        0x2602s
        0x2614s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
